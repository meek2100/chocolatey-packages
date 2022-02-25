$ErrorActionPreference = 'Stop'
$checksum = '96a94d7b721b819f02e8349eee182d75647d504a4246be166cb59786f9d2c482'
$url = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-2021-4-4.exe'

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
