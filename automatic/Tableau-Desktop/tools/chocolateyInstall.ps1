$ErrorActionPreference = 'Stop'
$checksum = '97d617aa175cbd3a26dc6c512da6f512e03193aae6619646dc83ba9d18154daa'
$url = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-2022-1-1.exe'

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
