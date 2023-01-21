$ErrorActionPreference = 'Stop'
$checksum = 'a54864c1478c11f2bf0c0a568b70c2919842d31f50bc838c04301e5564903da9'
$url = 'https://downloads.tableau.com/tssoftware/Tabrmt-Agent-64bit-2022-3-2.exe'

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
