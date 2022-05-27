$ErrorActionPreference = 'Stop'
$checksum = 'c6f8cda1661447ad66c00f9722c53057a1aeb37900375a552b18c3dcc9d8703f'
$url = 'https://downloads.tableau.com/tssoftware/TableauPrep-2022-1-2.exe'

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
