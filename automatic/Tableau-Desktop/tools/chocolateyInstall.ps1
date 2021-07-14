$ErrorActionPreference = 'Stop'
$checksum = 'd6057a7cdd7593c8f7933d9a74f3a691a70a98f0b57a7851a04ad2cb879690ce'
$url = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-2021-2-0.exe'

$packageArgs = @{
  packageName    = 'Tableau-Desktop'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  fileType       = 'exe'
  url64bit       = $url
  silentArgs     = "/quiet /norestart /LOG `"$($env:TEMP)\Tableau-$($env:chocolateyPackageVersion)-Install.log`" ACCEPTEULA=1"
  validExitCodes = @(0,3010)
  softwareName   = 'Tableau*'
  checksum64     = $checksum
  checksumType   = 'sha256'
}

Install-ChocolateyPackage @packageArgs
