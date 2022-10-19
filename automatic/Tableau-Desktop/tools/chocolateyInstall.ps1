$ErrorActionPreference = 'Stop'
$checksum = 'a6044a1eae7de9d8384d28f58fba122a87fca00aba986bf039a8f2793b36a6af'
$url = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-2022-3-0.exe'

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
