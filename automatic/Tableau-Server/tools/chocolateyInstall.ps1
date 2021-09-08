$ErrorActionPreference = 'Stop'
$checksum = '0bd55b2a626c215c23241e7171aa160d317de352ab1cad40476393b8fe8dda5f'
$url = 'https://downloads.tableau.com/tssoftware/TableauServer-64bit-2021-3-0.exe'

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
