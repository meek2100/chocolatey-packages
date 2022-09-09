$ErrorActionPreference = 'Stop'
$checksum = 'b32115d3c4a9a0aefe3f3977e40ce437a3ecad6b66926945c9f222bb5794650f'
$url = 'https://downloads.tableau.com/tssoftware/TableauServerTabcmd-64bit-2022-1-6.exe'

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
