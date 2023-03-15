$ErrorActionPreference = 'Stop'
$checksum = '814c7eb1d49fd839be7b417b3d46b17c0e0647083d36582ae9cc81563dc2a32e'
$url = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-2023-1-0.exe'

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
