$ErrorActionPreference = 'Stop'
$checksum = 'f982021e76e895ec2205947306a7e541c2e27376802564544feeaf6c2a7e9cd2'
$url = 'https://downloads.tableau.com/tssoftware/TableauServerTabcmd-64bit-2022-1-1.exe'

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
