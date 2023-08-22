$envtext = Get-content -Path env
foreach ($line in $envtext) {
    $re = '(?<env>[A-Z_a-z0-9]+) = \"(?<val>[A-Za-z0-9\-]+)\"'
    $line -match $re | Out-Null
    $envname = $Matches["env"]
    $envval = $Matches["val"]
    [System.Environment]::SetEnvironmentVariable($envname, $envval)
}
