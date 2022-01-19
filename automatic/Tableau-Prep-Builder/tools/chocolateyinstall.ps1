$ErrorActionPreference = 'Stop'
$checksum = '2e651d68c8f7624cab0a53c9c7bff5d6a97ad4098fb0e808168cc78ae796c1ce'
$url = 'https://downloads.tableau.com/tssoftware/TableauPrep-2021-4-4.exe'

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
