$ErrorActionPreference = 'Stop'
$checksum = '2b034bee952bc2011e93994553e104a24f9afabc4f7525486c3d6aedd3b20a0a'
$url = 'https://downloads.tableau.com/tssoftware/TableauServerTabcmd-64bit-2022-1-2.exe'

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
