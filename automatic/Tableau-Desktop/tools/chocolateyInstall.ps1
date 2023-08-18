$ErrorActionPreference = 'Stop'
$checksum = 'b927acfab22b58e4e190e049720d3b559602bd33a89e1e7cec5ab62466f3cd55'
$url = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-2023-2-1.exe'

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
