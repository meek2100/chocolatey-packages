$ErrorActionPreference = 'Stop'
$checksum = '45d877036403bb91346b1ede8ce78a4683903556870989930321c8698cbae911'
$url = 'https://downloads.tableau.com/tssoftware/TableauServerTabcmd-64bit-2021-2-0.exe'

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
