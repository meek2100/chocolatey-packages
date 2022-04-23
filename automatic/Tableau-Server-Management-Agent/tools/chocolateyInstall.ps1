$ErrorActionPreference = 'Stop'
$checksum = '415e0f394af82fa0e3f9521cccaf3f086859fc8c7e49e8fe0ddb6ded553bcc0a'
$url = 'https://downloads.tableau.com/tssoftware/Tabrmt-Agent-64bit-2022-1-1.exe'

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
