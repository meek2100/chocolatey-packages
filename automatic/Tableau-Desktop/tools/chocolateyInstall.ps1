$ErrorActionPreference = 'Stop'
$checksum = '3e843ae7a24488ad70480a6794c9fe9bf23ad4a9a4c4a0ddce492cecba69a13a'
$url = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-2021-4-3.exe'

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
