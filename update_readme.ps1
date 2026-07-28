$filePath = "C:\Users\ishan\Documents\Projects\Awesome-Patient-Flow-Optimization\README.md"
$content = Get-Content $filePath -Raw
$lines = $content -split "`r?`n"

$newLines = @()
$inSection = $false
$currentSection = @()

function Get-Stars {
    param([string]$repo)
    $url = "https://api.github.com/repos/$repo"
    try {
        $response = Invoke-RestMethod -Uri $url -Headers @{ "User-Agent" = "Awesome-List-Updater" }
        return $response.stargazers_count
    } catch {
        Write-Host "Error fetching $repo"
        return 0
    }
}

function Process-Section {
    param([array]$sectionLines)
    
    $items = @()
    foreach ($line in $sectionLines) {
        if ($line -match '^- \*\*\[.*?\]\((.*?)\)\*\* (.*)') {
            $url = $matches[1]
            if ($url -match 'github\.com/([^/]+/[^/]+?)(?:/)?$') {
                $repo = $matches[1]
                $stars = Get-Stars -repo $repo
                $badge = "[![GitHub stars](https://img.shields.io/github/stars/$repo?style=social&color=white)](https://github.com/$repo/stargazers)"
                
                $nameEnd = $line.IndexOf('**', $line.IndexOf('**') + 2) + 2
                $modifiedLine = $line.Substring(0, $nameEnd) + " $badge " + $line.Substring($nameEnd).TrimStart()
                $modifiedLine = $modifiedLine -replace " $badge  —", " $badge —"
                
                $items += [PSCustomObject]@{
                    Line = $modifiedLine
                    Stars = $stars
                }
            } else {
                $items += [PSCustomObject]@{
                    Line = $line
                    Stars = -1
                }
            }
        } else {
            $items += [PSCustomObject]@{
                Line = $line
                Stars = -1
            }
        }
    }
    
    $sortedItems = $items | Sort-Object Stars -Descending
    return $sortedItems | ForEach-Object { $_.Line }
}

foreach ($line in $lines) {
    if ($line.StartsWith("### ")) {
        if ($currentSection.Count -gt 0) {
            $newLines += Process-Section -sectionLines $currentSection
            $currentSection = @()
        }
        $newLines += $line
        $inSection = $true
    } elseif ($line.StartsWith("---") -or ($line.StartsWith("## ") -and -not $line.StartsWith("### "))) {
        if ($inSection) {
            if ($currentSection.Count -gt 0) {
                $newLines += Process-Section -sectionLines $currentSection
                $currentSection = @()
            }
            $inSection = $false
        }
        $newLines += $line
    } elseif ($inSection) {
        if ($line.Trim() -ne "" -or $currentSection.Count -gt 0) {
            $currentSection += $line
        }
    } else {
        $newLines += $line
    }
}

if ($currentSection.Count -gt 0) {
    $newLines += Process-Section -sectionLines $currentSection
}

$newLines -join "`n" | Set-Content $filePath -Encoding UTF8
