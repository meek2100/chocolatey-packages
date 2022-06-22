$ErrorActionPreference = 'Stop'
$checksum = '8cbeb249d718f256cebefe56eb889f499b2e02659cde595358f4c25c02e3ab69'
$url = 'https://downloads.tableau.com/tssoftware/TableauPrep-2022-1-3.exe'

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
