$ErrorActionPreference = 'Stop'
$checksum = '7c806fa3dfe5cc07349c808a2f3c006b74bdbe0912ed12f162a6d5b682b8c744'
$url = 'https://downloads.tableau.com/tssoftware/TableauPrep-2021-2-2.exe'

$packageArgs = @{
  packageName    = 'Tableau-Prep-Builder'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  fileType       = 'exe'
  url            = $url
  silentArgs     = '/quiet /norestart ACCEPTEULA=1'
  validExitCodes = @(0)
  softwareName   = 'Tableau*'
  checksum       = $checksum
  checksumType   = 'sha256'
}

Install-ChocolateyPackage @packageArgs
