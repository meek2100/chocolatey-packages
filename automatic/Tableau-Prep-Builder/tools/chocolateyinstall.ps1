$ErrorActionPreference = 'Stop'
$checksum = 'a87372e7425d7ddaf2e0eee60943a3cb27d362de3bebcc336cf926a73522ac27'
$url = 'https://downloads.tableau.com/tssoftware/TableauPrep-2023-3-1.exe'

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
