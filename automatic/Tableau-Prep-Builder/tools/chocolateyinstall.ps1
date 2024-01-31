$ErrorActionPreference = 'Stop'
$checksum = 'dc802706c48eef14cfa74d32c3cb4432fe7cc9ef65d4994f4bc1905ae0275c2e'
$url = 'https://downloads.tableau.com/tssoftware/TableauPrep-2023-3-2.exe'

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
