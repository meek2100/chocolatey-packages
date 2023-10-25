$ErrorActionPreference = 'Stop'
$checksum = '4b339c2b346b90a5beffe6dd9589fbbda5330861425482b6d6d5e28627eac9e6'
$url = 'https://downloads.tableau.com/tssoftware/TableauPrep-2023-3-0.exe'

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
