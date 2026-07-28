import re
import urllib.request
import json

def get_stars(repo):
    url = f"https://api.github.com/repos/{repo}"
    try:
        req = urllib.request.Request(url, headers={'User-Agent': 'Mozilla/5.0'})
        with urllib.request.urlopen(req) as response:
            data = json.loads(response.read().decode())
            return data.get('stargazers_count', 0)
    except Exception as e:
        print(f"Error fetching stars for {repo}: {e}")
        return 0

with open("README.md", "r", encoding="utf-8") as f:
    lines = f.readlines()

new_lines = []
in_section = False
current_section_lines = []

def process_section(section_lines):
    items = []
    for line in section_lines:
        # Match lines like: - **[Name](url)** — description
        match = re.match(r'^- \*\*\[.*?\]\((.*?)\)\*\* (.*)', line.strip())
        if match:
            url = match.group(1)
            repo_match = re.search(r'github\.com/([^/]+/[^/]+?)(?:/)?$', url)
            if repo_match:
                repo = repo_match.group(1)
                stars = get_stars(repo)
                badge = f'[![GitHub stars](https://img.shields.io/github/stars/{repo}?style=social&color=white)](https://github.com/{repo}/stargazers)'
                
                # Insert badge
                name_end = line.find('**', line.find('**') + 2) + 2
                modified_line = line[:name_end] + f' {badge} ' + line[name_end:].lstrip()
                # Ensure no double spaces after badge if there's an em dash
                modified_line = modified_line.replace(f' {badge}  —', f' {badge} —')
                
                items.append({'line': modified_line, 'stars': stars})
            else:
                items.append({'line': line, 'stars': -1})
        else:
            items.append({'line': line, 'stars': -1})
    
    # Sort items based on stars (descending)
    items.sort(key=lambda x: x['stars'], reverse=True)
    return [x['line'].rstrip('\n') + '\n' for x in items]

result = []
current_section = []
for line in lines:
    if line.startswith("### "):
        if current_section:
            result.extend(process_section(current_section))
            current_section = []
        result.append(line)
        in_section = True
    elif line.startswith("---") or line.startswith("## ") and not line.startswith("### "):
        if in_section:
            if current_section:
                result.extend(process_section(current_section))
                current_section = []
            in_section = False
        result.append(line)
    elif in_section:
        if line.strip() or current_section: # don't add leading empty lines to section
            current_section.append(line)
    else:
        result.append(line)

if current_section:
    result.extend(process_section(current_section))

with open("README.md", "w", encoding="utf-8") as f:
    f.writelines(result)
