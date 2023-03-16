$ErrorActionPreference = 'Stop'
$checksum = '58a793739549ad0fba7e27b7c55e8adbd6a922c3a8920343a1289303348d007c'
$url = 'https://downloads.tableau.com/tssoftware/Tabrmt-Agent-64bit-2023-1-0.exe'

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
