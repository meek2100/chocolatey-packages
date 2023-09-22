$ErrorActionPreference = 'Stop'
$checksum = '717015ff48a93f316986705db6f033d7deea8fa5a301268ec005096a217c495b'
$url = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-2023-2-2.exe'

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
