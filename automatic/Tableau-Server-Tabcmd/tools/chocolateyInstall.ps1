$ErrorActionPreference = 'Stop'
$checksum = '79a945c9594bf3ceae10b08e5d03c59f6c0d55b15d73e3975e5dbca8e325a90d'
$url = 'https://downloads.tableau.com/tssoftware/TableauServerTabcmd-64bit-2023-3-0.exe'

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
