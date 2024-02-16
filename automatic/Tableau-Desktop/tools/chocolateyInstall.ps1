$ErrorActionPreference = 'Stop'
$checksum = '2a53ac40b222a4717e58195766622537e04d773e7b5b8c36346bda476587a71d'
$url = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-2023-3-3.exe'

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
