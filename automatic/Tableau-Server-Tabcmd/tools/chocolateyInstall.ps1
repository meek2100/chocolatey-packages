$ErrorActionPreference = 'Stop'
$checksum = 'dcd4809997c62fbb3bc4a493182162bdbcc828c2564a08e9b8a8516c5b257fe1'
$url = 'https://downloads.tableau.com/tssoftware/TableauServerTabcmd-64bit-2023-1-3.exe'

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
