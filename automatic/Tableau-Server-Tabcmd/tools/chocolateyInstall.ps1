$ErrorActionPreference = 'Stop'
$checksum = 'e8134d01c708a18ec92910027b709e0914bf3cc69d8d4bf5e7e74d42776fd671'
$url = 'https://downloads.tableau.com/tssoftware/TableauServerTabcmd-64bit-2022-3-3.exe'

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
