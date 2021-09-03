$ErrorActionPreference = 'Stop'
$checksum = '977d8eca9ee610d9f3d3e2e8bb6952e1222cc919c3feb7ec58005be7302ba4f2'
$url = 'https://downloads.tableau.com/tssoftware/Tabrmt-Agent-64bit-2021-2-2.exe'

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
