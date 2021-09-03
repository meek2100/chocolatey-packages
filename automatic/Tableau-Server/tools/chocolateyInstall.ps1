$ErrorActionPreference = 'Stop'
$checksum = '86d46ebebdb4bfca19152fc9c8e34d419d4e128e735e5bd9919653ae69005e8b'
$url = 'https://downloads.tableau.com/tssoftware/TableauServer-64bit-2021-2-2.exe'

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
