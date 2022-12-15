$ErrorActionPreference = 'Stop'
$checksum = '43e2c9cffce8c76f645183efd0f6428f8ed7135fc81267f9882cf7731f81236f'
$url = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-2022-4-0.exe'

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
