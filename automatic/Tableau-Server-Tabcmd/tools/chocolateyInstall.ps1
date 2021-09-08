$ErrorActionPreference = 'Stop'
$checksum = 'b7cc36ea5df71a30d5c95c6133d4316e3082b07d183ffe5cfe4d690dd1e0f63d'
$url = 'https://downloads.tableau.com/tssoftware/TableauServerTabcmd-64bit-2021-3-0.exe'

$packageArgs = @{
  packageName    = 'Tableau-Server-Tabcmd'
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
