$ErrorActionPreference = 'Stop'
$checksum = '17a993d23e7bd15a16f6449dada9266ac1db115c17afe3bf71a0cc3f1978e789'
$url = 'https://downloads.tableau.com/tssoftware/TableauServer-64bit-2023-1-5.exe'

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
