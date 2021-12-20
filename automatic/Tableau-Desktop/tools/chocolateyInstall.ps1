$ErrorActionPreference = 'Stop'
$checksum = '050b07ee8953d294fd52dd7f3fd5dcd0f61d8b3273b56a4708c78a3bb00d7c2f'
$url = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-2021-4-2.exe'

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
