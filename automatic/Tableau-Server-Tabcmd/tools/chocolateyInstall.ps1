$ErrorActionPreference = 'Stop'
$checksum = 'a11bbccac790de7fca5ff9a53ad067c31ad3fa17bf319a2ac1a0fe44823f5fdb'
$url = 'https://downloads.tableau.com/tssoftware/TableauServerTabcmd-64bit-2021-3-1.exe'

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
