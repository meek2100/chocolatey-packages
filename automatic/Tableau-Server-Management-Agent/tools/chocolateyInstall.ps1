$ErrorActionPreference = 'Stop'
$checksum = '2791587c97b88020bb00092bb5a69ddee0974b9bad05856b81931661ab308fb3'
$url = 'https://downloads.tableau.com/tssoftware/Tabrmt-Agent-64bit-2023-3-1.exe'

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
