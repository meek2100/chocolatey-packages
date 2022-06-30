$ErrorActionPreference = 'Stop'
$checksum = 'f2d6a93199ffdccd40b7d3211afe06d9d59341eff782d56fbced9891ca53b937'
$url = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-2022-2-0.exe'

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
