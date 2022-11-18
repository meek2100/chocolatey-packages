$ErrorActionPreference = 'Stop'
$checksum = 'bfec3927effb2ca34887181e438ef8f8d6232f29b40bd94d4726f36f3d96de35'
$url = 'https://downloads.tableau.com/tssoftware/Tabrmt-Agent-64bit-2022-3-1.exe'

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
