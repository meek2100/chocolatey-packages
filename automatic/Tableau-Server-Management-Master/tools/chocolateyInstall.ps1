$ErrorActionPreference = 'Stop'
$checksum = '504e99447a4fc2af48abeadfad6dde4c6b94318a5c6266f485f799556974a610'
$url = 'https://downloads.tableau.com/tssoftware/Tabrmt-Master-64bit-2021-3-3.exe'

$packageArgs = @{
  packageName    = 'Tableau-Server-Management-Master'
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
