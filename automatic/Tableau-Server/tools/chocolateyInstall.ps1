$ErrorActionPreference = 'Stop'
$checksum = '907a8b5441b30c1e05fb79af21c1acb7c26e8b49170c6735106cf8afe3ae9c70'
$url = 'https://downloads.tableau.com/tssoftware/TableauServer-64bit-2021-4-2.exe'

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
