$ErrorActionPreference = 'Stop'
$checksum = '66c886defdd61834b264fd5a5757dbb2cb7d7ec308009b3ccb4f909422691cfc'
$url = 'https://downloads.tableau.com/tssoftware/TableauServer-64bit-2021-2-1.exe'

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
