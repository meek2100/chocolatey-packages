$ErrorActionPreference = 'Stop'
$checksum = '971e8aa699c014f7c0f7fa7b7d484633d751e7d8e08466d64293fd901e45b1db'
$url = 'https://downloads.tableau.com/tssoftware/Tabrmt-Master-64bit-2022-1-3.exe'

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
