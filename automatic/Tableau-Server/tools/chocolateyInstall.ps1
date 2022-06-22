$ErrorActionPreference = 'Stop'
$checksum = 'e421da27f1787d69463e290d2b07237f6a508cb92ff3c2c184a0e6815cf8f354'
$url = 'https://downloads.tableau.com/tssoftware/TableauServer-64bit-2022-1-3.exe'

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
