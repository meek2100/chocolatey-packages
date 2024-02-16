$ErrorActionPreference = 'Stop'
$checksum = '99b6615aa63125c7083ea1de478ba993a7671a57a98e97b852757276ad12ce21'
$url = 'https://downloads.tableau.com/tssoftware/TableauServerTabcmd-64bit-2023-3-3.exe'

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
