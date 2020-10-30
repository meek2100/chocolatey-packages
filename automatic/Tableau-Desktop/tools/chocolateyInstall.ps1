$ErrorActionPreference = 'Stop'
$checksum = '012359ea0d7fecc9f296708e605cf8803ea1c577a99df6f9440284c524143aad'
$url = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-2020-3-2.exe'

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
