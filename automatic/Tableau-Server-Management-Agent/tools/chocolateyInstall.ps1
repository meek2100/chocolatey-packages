$ErrorActionPreference = 'Stop'
$checksum = 'c4e7cd079fdf69cc7fbc18c69804d75a88adb997d4e104703a8d8d38a0f9077c'
$url = 'https://downloads.tableau.com/tssoftware/Tabrmt-Agent-64bit-2021-4-1.exe'

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
