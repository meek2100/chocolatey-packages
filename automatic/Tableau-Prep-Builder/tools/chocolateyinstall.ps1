$ErrorActionPreference = 'Stop'
$checksum = '2091c0f1fa3bb89f2504edee6c7cbf81785dae9345975273f7ad03a6c5b010ba'
$url = 'https://downloads.tableau.com/tssoftware/TableauPrep-2023-3-3.exe'

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
