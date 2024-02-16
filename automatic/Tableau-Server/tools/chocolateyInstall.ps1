$ErrorActionPreference = 'Stop'
$checksum = 'c49e05103620c983641f690468d8525a88b88bbb2c76733b27a09c01a9754c71'
$url = 'https://downloads.tableau.com/tssoftware/TableauServer-64bit-2023-3-3.exe'

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
