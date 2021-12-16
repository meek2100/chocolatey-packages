$ErrorActionPreference = 'Stop'
$checksum = 'f89aeb1286d302b33663987b236e14aeb9f2d07614d37246da1b412d2e46883e'
$url = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-2021-4-1.exe'

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
