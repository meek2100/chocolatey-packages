$ErrorActionPreference = 'Stop'
$checksum = '7518f8fd21c58449e8524e6b458c1f2ffd6f13ccbe752ba7a75954304e34b399'
$url = 'https://downloads.tableau.com/tssoftware/TableauServerTabcmd-64bit-2021-1-2.exe'

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
