$ErrorActionPreference = 'Stop'
$checksum = '48a658e33f854e861ac65d8b44d6d8db10695b4af9458268e4b58613b5cc1d09'
$url = 'https://downloads.tableau.com/tssoftware/TableauServer-64bit-2021-1-1.exe'

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
