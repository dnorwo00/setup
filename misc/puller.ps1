$dirs = Get-ChildItem -Directory ~/git/
$delim = "********************************************************************************"
Clear-Host;

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