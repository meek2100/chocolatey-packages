$ErrorActionPreference = 'Stop'
$checksum = 'c5e4ff1210439600f4d2c91d591190e3a346916eecc3561750208a16b23fabf2'
$url = 'https://downloads.tableau.com/tssoftware/TableauServerTabcmd-64bit-2022-3-1.exe'

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
