$ErrorActionPreference = 'Stop'
$checksum = 'b3e56e4657b922cb4f8e885331216b09a68cf26a02d9453582574b91de0970c2'
$url = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-2023-3-0.exe'

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
