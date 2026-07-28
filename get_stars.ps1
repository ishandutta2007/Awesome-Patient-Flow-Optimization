$repos = @(
    "coronasafe/care",
    "openmrs/openmrs-module-bedmanagement",
    "IMS-MAXIMS/openMAXIMS",
    "openemr/openemr",
    "basedavishkar/vitalit-os",
    "UCL-CORU/patientflow",
    "f9-o/OccupyBed-Ai",
    "nocomp/scribe",
    "VoxDroid/EDFlowSimulator",
    "masslight/ottehr",
    "gaureshpai/easpataal"
)

foreach ($repo in $repos) {
    $url = "https://api.github.com/repos/$repo"
    try {
        $response = Invoke-RestMethod -Uri $url -Headers @{ "User-Agent" = "Awesome-List-Updater" }
        Write-Host "$repo : $($response.stargazers_count)"
    } catch {
        Write-Host "Error fetching $repo"
    }
}
