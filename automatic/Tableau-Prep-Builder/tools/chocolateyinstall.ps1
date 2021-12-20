$ErrorActionPreference = 'Stop'
$checksum = 'f46269fb061ecb7802cd170db051efe9524301d25fd8216794aec3625100b907'
$url = 'https://downloads.tableau.com/tssoftware/TableauPrep-2021-4-3.exe'

$packageArgs = @{
  packageName    = 'Tableau-Prep-Builder'
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
