$ErrorActionPreference = 'Stop'
$checksum = '84506413a56fe327847f03a384cab23247b8d3e9c9da889544d3665e4ddc69a6'
$url = 'https://downloads.tableau.com/tssoftware/Tabrmt-Master-64bit-2021-1-0.exe'

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
