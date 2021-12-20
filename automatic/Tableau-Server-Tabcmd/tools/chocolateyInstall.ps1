$ErrorActionPreference = 'Stop'
$checksum = 'f548e072c1c9b1643b66803e52d40993a6edf16d97942a5e9d524351c328ec3d'
$url = 'https://downloads.tableau.com/tssoftware/TableauServerTabcmd-64bit-2021-4-2.exe'

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
