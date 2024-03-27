$ErrorActionPreference = 'Stop'
$checksum = '063e28e5a7947c058f21581be908bf23318d2c5497daea188327b9cf38e9a7ab'
$url = 'https://downloads.tableau.com/tssoftware/TableauServerTabcmd-64bit-2023-3-4.exe'

$packageArgs = @{
  packageName    = 'Tableau-Server-Tabcmd'
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
