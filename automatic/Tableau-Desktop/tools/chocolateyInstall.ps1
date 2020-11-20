$ErrorActionPreference = 'Stop'
$checksum = '54f1ba0b1df740da8ab42225d666e7e30fb32bf54a02622eeb79a791e40b89c0'
$url = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-2020-3-3.exe'

$packageArgs = @{
  packageName    = 'Tableau-Desktop'
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
