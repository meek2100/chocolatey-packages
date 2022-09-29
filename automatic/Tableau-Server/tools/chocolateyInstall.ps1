$ErrorActionPreference = 'Stop'
$checksum = '28495ab3dfe9000a64fad685e117fd3d4fc6c1eef0c1c1dfdb853d462683070b'
$url = 'https://downloads.tableau.com/tssoftware/TableauServer-64bit-2022-1-7.exe'

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
