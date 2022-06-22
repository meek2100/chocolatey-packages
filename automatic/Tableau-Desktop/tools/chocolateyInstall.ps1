$ErrorActionPreference = 'Stop'
$checksum = '1b7b9f88f1d2d0b90cdcc48e22aea717f2765149fceb458da6bb26291c30409b'
$url = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-2022-1-3.exe'

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
