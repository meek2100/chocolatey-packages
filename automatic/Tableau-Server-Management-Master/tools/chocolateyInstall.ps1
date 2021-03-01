$ErrorActionPreference = 'Stop'
$checksum = 'ba3281d14336d9f5945ab0c2686527b85bbf20e6f90bf4873c59cd66fefbd451'
$url = 'https://downloads.tableau.com/tssoftware/Tabrmt-Master-64bit-2020-4-2.exe'

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
