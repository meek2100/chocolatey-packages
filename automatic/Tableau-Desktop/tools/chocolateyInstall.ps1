$ErrorActionPreference = 'Stop'
$checksum = 'f9a1985f90316a2870ad70b99c22e745372eb28a928fbf41fe87ab3714a2dd1c'
$url = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-2022-1-2.exe'

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
