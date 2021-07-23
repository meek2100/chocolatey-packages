$ErrorActionPreference = 'Stop'
$checksum = '53b504e1cc4fe330e8e4d8cc07a6e3854534818939ab48bc781401e6525963af'
$url = 'https://downloads.tableau.com/tssoftware/Tabrmt-Agent-64bit-2021-2-1.exe'

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
