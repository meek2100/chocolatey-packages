$ErrorActionPreference = 'Stop'
$checksum = 'd6057a7cdd7593c8f7933d9a74f3a691a70a98f0b57a7851a04ad2cb879690ce'
$url = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-2021-2-0.exe'

$packageArgs = @{
  packageName    = 'Tableau-Desktop'
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
