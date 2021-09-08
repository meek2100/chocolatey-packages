$ErrorActionPreference = 'Stop'
$checksum = 'ed8d5c3be938f3d7e860f5f0e89b2162802301a0e256f4cbddbac97d5296d4fe'
$url = 'https://downloads.tableau.com/tssoftware/Tabrmt-Agent-64bit-2021-3-0.exe'

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
