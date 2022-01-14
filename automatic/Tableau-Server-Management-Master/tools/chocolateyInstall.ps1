$ErrorActionPreference = 'Stop'
$checksum = '7654206ecb7ef45d5ecaf53727af3d3d487f8cd0b5c8aa6a2aa1aed8d0825cda'
$url = 'https://downloads.tableau.com/tssoftware/Tabrmt-Master-64bit-2021-4-1.exe'

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
