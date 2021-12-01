$ErrorActionPreference = 'Stop'
$checksum = '4ff81ed73e422e6e9a80c44f088b2c92e5b75bd6b328a7dc2d4c70c56ed9954e'
$url = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-2021-3-4.exe'

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
