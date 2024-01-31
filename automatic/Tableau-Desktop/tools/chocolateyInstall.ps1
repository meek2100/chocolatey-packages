$ErrorActionPreference = 'Stop'
$checksum = '72e01c196291610e01068dd49ca7219eee85c6642052112bb5a56a37d5ba2b3b'
$url = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-2023-3-2.exe'

$packageArgs = @{
  packageName    = 'Tableau-Desktop'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  fileType       = 'exe'
  url            = $url
  silentArgs     = "/quiet /norestart /LOG `"$($env:TEMP)\Tableau-$($env:chocolateyPackageVersion)-Install.log`" ACCEPTEULA=1"
  validExitCodes = @(0,3010)
  softwareName   = 'Tableau*'
  checksum       = $checksum
  checksumType   = 'sha256'
}

Install-ChocolateyPackage @packageArgs
