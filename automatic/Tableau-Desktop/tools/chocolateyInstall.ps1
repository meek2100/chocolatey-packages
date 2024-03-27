$ErrorActionPreference = 'Stop'
$checksum = 'cd8f2f7961e84aaaea7762faa3023afc667a36f48a58deef036ce8e02b2ffc96'
$url = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-2024-1-1.exe'

$packageArgs = @{
  packageName    = 'Tableau-Desktop'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  fileType       = 'exe'
  url            = $url
  silentArgs     = "/quiet /norestart /LOG `"$($env:TEMP)\Tableau-$($env:chocolateyPackageVersion)-Install.log`" ACCEPTEULA=1"
  validExitCodes = @(0,3010)
  softwareName   = 'Tableau*'
  checksum       = $checksum
  checksumType   = 'sha256'
}

Install-ChocolateyPackage @packageArgs
