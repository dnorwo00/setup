Clear-Host;
$gitDir = ($env:COMPUTERNAME -match "dev.*02PC" ? "H:\git\" : "~/git/")
$dirs = Get-ChildItem -Directory $gitDir
$delim = "********************************************************************************"

foreach ($dir in $dirs) {
    if ($dir -notmatch "\\z_") {
        Write-Output($delim);
        Write-Output("Pulling $dir");
        git -C $dir pull;
        Write-Output($delim);
        Write-Output("");
        Write-Output("");
    }
}