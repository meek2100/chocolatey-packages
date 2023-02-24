$ErrorActionPreference = 'Stop'
$checksum = '3fe99af92019f6a03c17a4468b73e8dcf8e795446eff0eed131cba72d109377d'
$url = 'https://downloads.tableau.com/tssoftware/TableauServerTabcmd-64bit-2022-3-4.exe'

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
