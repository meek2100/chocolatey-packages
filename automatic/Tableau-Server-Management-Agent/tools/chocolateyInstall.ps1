$ErrorActionPreference = 'Stop'
$checksum = 'cb5cb04b7e2d62585645715d908c861a059eeaee7e8e2d766a333febff904377'
$url = 'https://downloads.tableau.com/tssoftware/Tabrmt-Agent-64bit-2022-3-0.exe'

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
