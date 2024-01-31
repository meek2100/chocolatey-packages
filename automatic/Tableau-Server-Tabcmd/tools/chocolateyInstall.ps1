$ErrorActionPreference = 'Stop'
$checksum = '3041380c91b6e9e7653453a31770febca511f567296a0278dae866d2fce79a42'
$url = 'https://downloads.tableau.com/tssoftware/TableauServerTabcmd-64bit-2023-3-2.exe'

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
