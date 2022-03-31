$ErrorActionPreference = 'Stop'
$checksum = '8515353904af4733e933b188f0671fe2b542bba0a98c14c016046392a9767806'
$url = 'https://downloads.tableau.com/tssoftware/TableauPrep-2022-1-1.exe'

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
