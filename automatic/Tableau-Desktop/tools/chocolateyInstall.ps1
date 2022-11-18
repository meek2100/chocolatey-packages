$ErrorActionPreference = 'Stop'
$checksum = '190d12d8ada33987a73b8a05062126caf40a47cd2cf37e251c1076179ccb3c5e'
$url = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-2022-3-1.exe'

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
