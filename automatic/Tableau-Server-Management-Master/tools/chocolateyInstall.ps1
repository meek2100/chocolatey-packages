$ErrorActionPreference = 'Stop'
$checksum = '794445b775e5444030a62ef364997015c0c7b44cd6ae8c06c8ffd94f6b1bb3c2'
$url = 'https://downloads.tableau.com/tssoftware/Tabrmt-Master-64bit-2022-3-0.exe'

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
