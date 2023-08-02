$ErrorActionPreference = 'Stop'
$checksum = '31d04c23d57a3323ab23b5d0db9c2dbe4b0617cc1563fa5ba0fcaf8407d2647e'
$url = 'https://downloads.tableau.com/tssoftware/TableauServer-64bit-2023-1-4.exe'

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
