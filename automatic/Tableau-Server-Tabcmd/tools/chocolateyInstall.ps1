$ErrorActionPreference = 'Stop'
$checksum = 'ccd27294c751e5b113c61af1b592a54c2fcd89f471dd25fef0cae4d0e6a80117'
$url = 'https://downloads.tableau.com/tssoftware/TableauServerTabcmd-64bit-2022-3-2.exe'

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
