$ErrorActionPreference = 'Stop'
$checksum = '3c16f611756580059474fcf228c535c497fa711ab5d02ec7dac094c07e0b88e5'
$url = 'https://downloads.tableau.com/tssoftware/Tabrmt-Master-64bit-2023-1-2.exe'

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
