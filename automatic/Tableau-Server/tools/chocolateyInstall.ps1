$ErrorActionPreference = 'Stop'
$checksum = '8b308e4e5c56c00b6aa1da367d45b70fd7674e9a788411e7f681ed22c27fdb55'
$url = 'https://downloads.tableau.com/tssoftware/TableauServer-64bit-2023-1-2.exe'

$packageArgs = @{
  packageName    = 'Tableau-Server'
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
