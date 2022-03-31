$ErrorActionPreference = 'Stop'
$checksum = '92b5e8003eae11e40c082b5a54f2525a5c5137eaa1ecc6e3e693b9139798206e'
$url = 'https://downloads.tableau.com/tssoftware/Tabrmt-Master-64bit-2022-1-0.exe'

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
