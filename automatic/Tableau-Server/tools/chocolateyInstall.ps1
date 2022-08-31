$ErrorActionPreference = 'Stop'
$checksum = '5f17c917601cad5b69d23bd85e7a67fb4cacf948c3f2aa45fb2e384765437f19'
$url = 'https://downloads.tableau.com/tssoftware/TableauServer-64bit-2022-1-5.exe'

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
