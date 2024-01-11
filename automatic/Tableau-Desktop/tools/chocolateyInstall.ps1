$ErrorActionPreference = 'Stop'
$checksum = '7a2c8847e97972869b28612a1b7d590e3c82038a0575f867388a3a9612f0ad1c'
$url = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-2023-3-1.exe'

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
