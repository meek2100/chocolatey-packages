$ErrorActionPreference = 'Stop'
$checksum = '093a318cbf64b23cf0f1bd9196bcab2361960d1958bfd833a57a6cd810c0e3a4'
$url = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-2021-1-1.exe'

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
