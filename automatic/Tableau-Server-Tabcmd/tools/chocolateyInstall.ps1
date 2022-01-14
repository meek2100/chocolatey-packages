$ErrorActionPreference = 'Stop'
$checksum = '6152e2bd98fe4db47f579db2f6976f7a0954cbd9d66c75fc56fc8ad3f1ca48b6'
$url = 'https://downloads.tableau.com/tssoftware/TableauServerTabcmd-64bit-2021-4-3.exe'

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
