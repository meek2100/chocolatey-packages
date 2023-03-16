$ErrorActionPreference = 'Stop'
$checksum = '67fa4cad1873af76e188fecc3f6fdb5f8b5234bbdb66f4d8de40bdf194a6cf98'
$url = 'https://downloads.tableau.com/tssoftware/Tabrmt-Master-64bit-2023-1-0.exe'

$packageArgs = @{
  packageName    = 'Tableau-Server-Management-Master'
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
