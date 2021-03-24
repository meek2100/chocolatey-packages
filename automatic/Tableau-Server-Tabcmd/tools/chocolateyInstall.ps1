$ErrorActionPreference = 'Stop'
$checksum = 'c0ad23e60926a000fd564f63900cf175081d770cf9bf161d9ac977b5308f7e80'
$url = 'https://downloads.tableau.com/tssoftware/TableauServerTabcmd-64bit-2020-4-3.exe'

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
