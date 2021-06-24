$ErrorActionPreference = 'Stop'
$checksum = '9ff65a920d54403e9863ed7a13dc6606e299aecf3bf6179edb85b3bc17a301e6'
$url = 'https://downloads.tableau.com/tssoftware/Tabrmt-Master-64bit-2021-2-0.exe'

$packageArgs = @{
  packageName    = 'Tableau-Server-Management-Master'
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
