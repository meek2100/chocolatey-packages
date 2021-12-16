$ErrorActionPreference = 'Stop'
$checksum = 'c627ca8d09425d67a82a7d6ac932e3598a53bd7ff468ed7e6b8645118f0543ec'
$url = 'https://downloads.tableau.com/tssoftware/TableauServer-64bit-2021-4-1.exe'

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
