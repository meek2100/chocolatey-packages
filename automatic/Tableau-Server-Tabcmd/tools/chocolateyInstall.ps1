$ErrorActionPreference = 'Stop'
$checksum = '238f628d1c2547f3c97312d8d0d656e5f6c5f015f72272eb6285d3185b9f84ab'
$url = 'https://downloads.tableau.com/tssoftware/TableauServerTabcmd-64bit-2023-1-0.exe'

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
