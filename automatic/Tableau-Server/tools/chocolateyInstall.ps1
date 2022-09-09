$ErrorActionPreference = 'Stop'
$checksum = '60fd2a9a8a339128f532935a20204627700e0ac9286c29b29d02f0a4a9c1efb4'
$url = 'https://downloads.tableau.com/tssoftware/TableauServer-64bit-2022-1-6.exe'

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
