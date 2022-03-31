$ErrorActionPreference = 'Stop'
$checksum = '72a3d508dfdd55a32e947e21bac796cc318e18667b3f7bb6f654f73c29bbd157'
$url = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-2022-1-0.exe'

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
