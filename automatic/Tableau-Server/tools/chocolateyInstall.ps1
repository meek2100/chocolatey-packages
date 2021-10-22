$ErrorActionPreference = 'Stop'
$checksum = 'ab710ea6ddff5efe226bcd2e76a909d6e84d48f7695648de31d46b5b35c8d8e3'
$url = 'https://downloads.tableau.com/tssoftware/TableauServer-64bit-2021-3-2.exe'

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
