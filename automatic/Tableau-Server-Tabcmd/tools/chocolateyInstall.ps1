$ErrorActionPreference = 'Stop'
$checksum = 'aafe11b52b29ea14892f965edd146ab8b01342f08db762e7dd129f681fc2f786'
$url = 'https://downloads.tableau.com/tssoftware/TableauServerTabcmd-64bit-2020-4-2.exe'

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
