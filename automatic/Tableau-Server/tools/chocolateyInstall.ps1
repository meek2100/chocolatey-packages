$ErrorActionPreference = 'Stop'
$checksum = 'be3b441a66161c3c6acc4c806e46fcf653579c3bb1dac0c8f787b72125fa4758'
$url = 'https://downloads.tableau.com/tssoftware/TableauServer-64bit-2023-3-4.exe'

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
