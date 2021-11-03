$ErrorActionPreference = 'Stop'
$checksum = '34eaab85f72dd69ffd20dfa28c3226855348f4ae85d324de87affac7156ac538'
$url = 'https://downloads.tableau.com/tssoftware/TableauPrep-2021-3-2.exe'

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
