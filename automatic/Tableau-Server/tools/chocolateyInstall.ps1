$ErrorActionPreference = 'Stop'
$checksum = '36596bf1a847f0e382821f7d7b6a69d5dd8ec963608295d93e7a67114c6108f5'
$url = 'https://downloads.tableau.com/tssoftware/TableauServer-64bit-2022-1-4.exe'

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
