$ErrorActionPreference = 'Stop'
$checksum = 'b83714099ce4291432db3a3d6a861b8c23cf5c759f743b9a67404283e22f2d3b'
$url = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-2022-2-2.exe'

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
