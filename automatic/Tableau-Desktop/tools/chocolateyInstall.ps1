$ErrorActionPreference = 'Stop'
$checksum = 'b2473676b6b591cf322d41f1a5114473f3b0421da837d1cae83c4f5be2b1b191'
$url = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-2023-1-2.exe'

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
