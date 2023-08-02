$ErrorActionPreference = 'Stop'
$checksum = 'c9b7378a6868aba70aebd8c7ed38ccb7af276f7869f66fec3bc83fe980a87df4'
$url = 'https://downloads.tableau.com/tssoftware/TableauServerTabcmd-64bit-2023-1-4.exe'

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
