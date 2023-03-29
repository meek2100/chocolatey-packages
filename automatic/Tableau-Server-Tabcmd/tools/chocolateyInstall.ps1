$ErrorActionPreference = 'Stop'
$checksum = '44502baac5c962bb601cff41fc8ff88dc7c53e3bad781cade333fac0efaaefc3'
$url = 'https://downloads.tableau.com/tssoftware/TableauServerTabcmd-64bit-2023-1-1.exe'

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
