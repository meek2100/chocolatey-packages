$ErrorActionPreference = 'Stop'
$checksum = '2e158c1476b210610e7e03242e0761d9c639fa1762620537446ce6e7cb02b210'
$url = 'https://downloads.tableau.com/tssoftware/TableauServer-64bit-2020-4-3.exe'

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
