$ErrorActionPreference = 'Stop'
$checksum = 'f17d9d5574dd4fec9d10d9f7011196d62e8f827fa95be858afcb4a8872944753'
$url = 'https://downloads.tableau.com/tssoftware/Tabrmt-Agent-64bit-2023-3-0.exe'

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
