$ErrorActionPreference = 'Stop'
$checksum = 'a0a62ae1014ebc96f67c07318ec75ba3b995ea9c634a5965fcc5c6ecb6319c36'
$url = 'https://downloads.tableau.com/tssoftware/Tabrmt-Agent-64bit-2023-3-4.exe'

$packageArgs = @{
  packageName    = 'Tableau-Server-Management-Agent'
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
