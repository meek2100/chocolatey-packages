$ErrorActionPreference = 'Stop'
$checksum = '98d6fc6291e932f0662fec6d2e626be00eacf9ed5a1e15ae19c7d2bf2d4c3d74'
$url = 'https://downloads.tableau.com/tssoftware/Tabrmt-Agent-64bit-2023-1-2.exe'

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
