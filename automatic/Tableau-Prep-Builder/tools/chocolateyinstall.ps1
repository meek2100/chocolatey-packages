$ErrorActionPreference = 'Stop'
$checksum = '3a607580e0adb3e56f57ef51927a46373c225fbabb5ed8a9210fe4f06c04c789'
$url = 'https://downloads.tableau.com/tssoftware/TableauPrep-2021-1-4.exe'

$packageArgs = @{
  packageName    = 'Tableau-Prep-Builder'
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
