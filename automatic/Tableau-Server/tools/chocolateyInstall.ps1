$ErrorActionPreference = 'Stop'
$checksum = 'c00bf3371a4d0696518dec04e75b142ee6843a274237ebf86eeeb7f8bad1c054'
$url = 'https://downloads.tableau.com/tssoftware/TableauServer-64bit-2023-1-6.exe'

$packageArgs = @{
  packageName    = 'Tableau-Server'
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
