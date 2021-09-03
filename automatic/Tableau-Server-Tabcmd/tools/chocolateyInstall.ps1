$ErrorActionPreference = 'Stop'
$checksum = '6ebb505ff6f8da058bacd5a2f52a41252b2a4ecfb5fe4e538b7f615df17eaa11'
$url = 'https://downloads.tableau.com/tssoftware/TableauServerTabcmd-64bit-2021-2-2.exe'

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
