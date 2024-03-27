$ErrorActionPreference = 'Stop'
$checksum = 'de1442f443478d34c728be2c6f2ede60d19ff6ce463c11899ae955bdfcda37bc'
$url = 'https://downloads.tableau.com/tssoftware/TableauPrep-2024-1-1.exe'

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
