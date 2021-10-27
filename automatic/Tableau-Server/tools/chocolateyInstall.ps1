$ErrorActionPreference = 'Stop'
$checksum = 'e0684089d2651ce13e06687503c67e87b4c6ba941734ba25cba17dbd5fe3a1b1'
$url = 'https://downloads.tableau.com/tssoftware/TableauServer-64bit-2021-3-3.exe'

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
