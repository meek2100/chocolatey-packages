$ErrorActionPreference = 'Stop'
$checksum = 'a37cb1fbd412e15cb365585f7a2bb8f636e7f1dab2faf2809492373a4aceed7b'
$url = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-2022-2-1.exe'

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
