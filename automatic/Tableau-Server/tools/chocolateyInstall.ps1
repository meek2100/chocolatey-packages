$ErrorActionPreference = 'Stop'
$checksum = 'd28a0990f088e39f1029f0372e0058775e52963a6bf5f4e75915d74599df1c02'
$url = 'https://downloads.tableau.com/tssoftware/TableauServer-64bit-2023-3-1.exe'

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
