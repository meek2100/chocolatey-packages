$ErrorActionPreference = 'Stop'
$checksum = '1d1c18163ea6eaa93be8be1973d9095ec650089e84bbe8f804576df06abec5ae'
$url = 'https://downloads.tableau.com/tssoftware/TableauServerTabcmd-64bit-2021-4-4.exe'

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
