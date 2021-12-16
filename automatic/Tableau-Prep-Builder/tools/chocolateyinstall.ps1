$ErrorActionPreference = 'Stop'
$checksum = '3212404be3156b8304daba6aa20a3d24bfc18f5221ab7c62b1ac4123498548db'
$url = 'https://downloads.tableau.com/tssoftware/TableauPrep-2021-4-2.exe'

$packageArgs = @{
  packageName    = 'Tableau-Prep-Builder'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  fileType       = 'exe'
  url            = $url
  silentArgs     = '/quiet /norestart ACCEPTEULA=1'
  validExitCodes = @(0)
  softwareName   = 'Tableau*'
  checksum       = $checksum
  checksumType   = 'sha256'
}

Install-ChocolateyPackage @packageArgs
