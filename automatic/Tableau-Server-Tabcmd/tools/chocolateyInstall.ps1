$ErrorActionPreference = 'Stop'
$checksum = '5603767400aebd7f918aac4839df250aacdc32181f403946f17a3eca6313ccdb'
$url = 'https://downloads.tableau.com/tssoftware/TableauServerTabcmd-64bit-2022-1-4.exe'

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
