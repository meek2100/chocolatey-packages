$ErrorActionPreference = 'Stop'
$checksum = '1e858908b68dc067acd8845afa68e31c550c8bbb6b51ba2b96b4ad88b83b38de'
$url = 'https://downloads.tableau.com/tssoftware/TableauServerTabcmd-64bit-2021-3-2.exe'

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
