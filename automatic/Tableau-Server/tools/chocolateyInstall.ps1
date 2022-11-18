$ErrorActionPreference = 'Stop'
$checksum = '96110a1736ad290094f6f8b7edb4ae08ba3a7d2317d942d3237470e487ed8ca0'
$url = 'https://downloads.tableau.com/tssoftware/TableauServer-64bit-2022-3-1.exe'

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
