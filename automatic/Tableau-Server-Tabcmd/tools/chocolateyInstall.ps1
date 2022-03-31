$ErrorActionPreference = 'Stop'
$checksum = '97571df71975110e5d8006b2e3f133a0a7cb5f496190330d2e2df5725ff4762a'
$url = 'https://downloads.tableau.com/tssoftware/TableauServerTabcmd-64bit-2022-1-0.exe'

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
