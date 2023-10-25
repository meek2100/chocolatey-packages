$ErrorActionPreference = 'Stop'
$checksum = 'dc478cd85be5b85f8fcc508f0999728f94d8800c6f5a5bc3bd51a15bf124e89f'
$url = 'https://downloads.tableau.com/tssoftware/TableauServer-64bit-2023-3-0.exe'

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
