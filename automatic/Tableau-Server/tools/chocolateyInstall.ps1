$ErrorActionPreference = 'Stop'
$checksum = '379599715dac378f1d026a7e354552380720819d92c90c6e85648d4bd05b749f'
$url = 'https://downloads.tableau.com/tssoftware/TableauServer-64bit-2022-1-1.exe'

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
