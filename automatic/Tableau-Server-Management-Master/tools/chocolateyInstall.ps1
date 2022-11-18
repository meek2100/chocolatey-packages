$ErrorActionPreference = 'Stop'
$checksum = '4055af893dcff537bbd70dca29fe036a24acf6204cf0023af4eeaf7e19f5459f'
$url = 'https://downloads.tableau.com/tssoftware/Tabrmt-Master-64bit-2022-3-1.exe'

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
