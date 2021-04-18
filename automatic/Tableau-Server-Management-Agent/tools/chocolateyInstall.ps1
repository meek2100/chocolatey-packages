$ErrorActionPreference = 'Stop'
$checksum = 'fe99b818d74c3ddb2cc6a1bc7a6308e8053ef48dcf1d3adc5487621734a4330a'
$url = 'https://downloads.tableau.com/tssoftware/Tabrmt-Agent-64bit-2021-1-0.exe'

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
