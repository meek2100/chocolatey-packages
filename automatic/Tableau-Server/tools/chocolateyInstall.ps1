$ErrorActionPreference = 'Stop'
$checksum = '05a500be18f92e43d38d8d4ece76809543b9606b56398b7905a4d142fde91eda'
$url = 'https://downloads.tableau.com/tssoftware/TableauServer-64bit-2023-1-3.exe'

$packageArgs = @{
  packageName    = 'Tableau-Server'
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
