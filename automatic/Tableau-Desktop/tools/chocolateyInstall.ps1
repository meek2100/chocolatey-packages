$ErrorActionPreference = 'Stop'
$checksum = '554c1727d9c9e80523f383556a92b77877ad000ce891d8ad8bafba24d4b0863a'
$url = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-2021-2-1.exe'

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
