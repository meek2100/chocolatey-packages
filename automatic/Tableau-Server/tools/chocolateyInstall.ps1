$ErrorActionPreference = 'Stop'
$checksum = '47d85fc80875e5e30d5b78fc9911e61c4bdb7c84cd19fa98da794815520fd0e7'
$url = 'https://downloads.tableau.com/tssoftware/TableauServer-64bit-2021-3-4.exe'

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
