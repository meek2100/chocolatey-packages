$ErrorActionPreference = 'Stop'
$checksum = 'f520801445bf057e15b8af18f5d1812bc1f8c490ffa5f213041aaf426726b5f5'
$url = 'https://downloads.tableau.com/tssoftware/TableauPrep-2021-4-1.exe'

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
