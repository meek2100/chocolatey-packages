$ErrorActionPreference = 'Stop'
$checksum = '869c6c63ad39975d309ea89ef14000ba8ee2b3de92f3a707fab79ba86890c7dd'
$url = 'https://downloads.tableau.com/tssoftware/TableauPrep-2023-1-0.exe'

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
