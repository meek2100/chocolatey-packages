$ErrorActionPreference = 'Stop'
$checksum = '992493763fbae0c65ce54b55eb2b6fb28b6922f0ae03acb6cf4c3671a28123a3'
$url = 'https://downloads.tableau.com/tssoftware/Tabrmt-Master-64bit-2021-2-1.exe'

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
