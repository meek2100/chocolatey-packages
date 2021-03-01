$ErrorActionPreference = 'Stop'
$checksum = '290c0dd1d6f732e60a20a47476f3f4ce8eb658b326df90e472aa27eeb34b0b02'
$url = 'https://downloads.tableau.com/tssoftware/TableauServer-64bit-2020-4-2.exe'

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
