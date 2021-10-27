$ErrorActionPreference = 'Stop'
$checksum = 'a9a878136a1c302149f21d666bcb28237f944368f6b2cc92e10dacb9732dc8ff'
$url = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-2021-3-3.exe'

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
