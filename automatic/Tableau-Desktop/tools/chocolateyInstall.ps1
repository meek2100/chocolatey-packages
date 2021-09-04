$ErrorActionPreference = 'Stop'
$checksum = '2c816061ddaa1ed4bab3614585c305e8819487a28b681a4138ea7cbf3a19a0ef'
$url = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-2021-2-2.exe'

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
