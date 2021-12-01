$ErrorActionPreference = 'Stop'
$checksum = 'a03cbb123b9ff134caa3ccd7f861681d87ba5437186610d695c1fcc6b87d2204'
$url = 'https://downloads.tableau.com/tssoftware/TableauServerTabcmd-64bit-2021-3-4.exe'

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
