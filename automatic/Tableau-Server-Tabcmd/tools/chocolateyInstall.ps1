$ErrorActionPreference = 'Stop'
$checksum = 'eae4151f9829621138710a6a5fc676166605aaed1e98f507a41e2a888189b4c5'
$url = 'https://downloads.tableau.com/tssoftware/TableauServerTabcmd-64bit-2021-1-0.exe'

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
