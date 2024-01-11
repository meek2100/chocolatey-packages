$ErrorActionPreference = 'Stop'
$checksum = '0693c00df58dd229f08108399f963b33370a98e8357387aec0a3599d6bfda937'
$url = 'https://downloads.tableau.com/tssoftware/TableauServerTabcmd-64bit-2023-3-1.exe'

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
