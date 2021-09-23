$ErrorActionPreference = 'Stop'
$checksum = '3365db8a2816c54f73b72cd85a1b1e42ab375d3308e23b553cee80647894a66a'
$url = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-2021-3-1.exe'

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
