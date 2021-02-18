$ErrorActionPreference = 'Stop'
$checksum = '1969427D57FE74B6EE4FA24B5FA25B7ADDFF5D371FEDA30E512F8EEFD46809C9'
$url = 'https://downloads.tableau.com/tssoftware/TableauPrep-2020-3-3.exe'

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