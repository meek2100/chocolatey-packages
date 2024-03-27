$ErrorActionPreference = 'Stop'
$checksum = '17931c8ca1fc4c56e9465205d44dba2ab03b44c82847fecd1010bee1bdf24f2e'
$url = 'https://downloads.tableau.com/tssoftware/Tabrmt-Master-64bit-2023-3-4.exe'

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
