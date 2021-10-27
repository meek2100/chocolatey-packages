$ErrorActionPreference = 'Stop'
$checksum = 'e710f125651be2917dd8fc3b9b108e29eccf85e4ed395672e6e989934068b5d9'
$url = 'https://downloads.tableau.com/tssoftware/TableauServerTabcmd-64bit-2021-3-3.exe'

$packageArgs = @{
  packageName    = 'Tableau-Server-Tabcmd'
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
