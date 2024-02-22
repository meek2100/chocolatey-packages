$ErrorActionPreference = 'Stop'
$checksum = 'c2fa3c9fa73c92f7312b264a8794b58ca71e4ed9f82b70bc220443442a5ce577'
$url = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-2024-1-0.exe'

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
