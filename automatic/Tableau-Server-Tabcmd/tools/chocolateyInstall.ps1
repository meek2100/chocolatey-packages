$ErrorActionPreference = 'Stop'
$checksum = '8085c7e3e49391a2302c8d148fa0e4318a2a41f18b7cb21e96d66ab5fcda3de5'
$url = 'https://downloads.tableau.com/tssoftware/TableauServerTabcmd-64bit-2021-4-0.exe'

$packageArgs = @{
  packageName    = 'Tableau-Server-Tabcmd'
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
