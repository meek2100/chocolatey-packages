$ErrorActionPreference = 'Stop'
$checksum = 'd1a72ae444a0b9dc1d83abcd8f809ca1179b1fcb3945ad337a3d1997ab3f5d10'
$url = 'https://downloads.tableau.com/tssoftware/TableauServer-64bit-2023-1-0.exe'

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
