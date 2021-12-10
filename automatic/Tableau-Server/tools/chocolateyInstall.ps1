$ErrorActionPreference = 'Stop'
$checksum = '3bcbeb282c2559a6fe604fcedef7af21b0148f7cdbf7a4054ba305d5a9cb987f'
$url = 'https://downloads.tableau.com/tssoftware/TableauServer-64bit-2021-4-0.exe'

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
