$ErrorActionPreference = 'Stop'
$checksum = 'b80fddbda76d607eb533d611e1a0805e37f5c56a85d868cec2827595f45d78bb'
$url = 'https://downloads.tableau.com/tssoftware/TableauServerTabcmd-64bit-2021-4-1.exe'

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
