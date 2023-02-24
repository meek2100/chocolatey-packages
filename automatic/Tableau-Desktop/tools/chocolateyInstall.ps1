$ErrorActionPreference = 'Stop'
$checksum = 'c63ec3ab246fdc19d89067c62f4f0078bbb0e3b7de939a882d2901e7e9554e93'
$url = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-2022-4-1.exe'

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
