$ErrorActionPreference = 'Stop'
$checksum = '3d654070fe7b6e50e43aa5a8bc01c3d11271a351e3d5bb0c12488e7c318f2d16'
$url = 'https://downloads.tableau.com/tssoftware/Tabrmt-Master-64bit-2022-1-1.exe'

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
