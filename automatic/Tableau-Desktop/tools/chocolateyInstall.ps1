$ErrorActionPreference = 'Stop'
$checksum = 'bfa5b68b910e4e818964ceecc5ece40687986a0416eb167b60b0a324b7950fd4'
$url = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-2023-2-0.exe'

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
