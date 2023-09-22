$ErrorActionPreference = 'Stop'
$checksum = '070b80437b1c094222d9e5dcbba7d7c3e2e097ec90d936f06589c5bb55fe520c'
$url = 'https://downloads.tableau.com/tssoftware/TableauServerTabcmd-64bit-2023-1-6.exe'

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
