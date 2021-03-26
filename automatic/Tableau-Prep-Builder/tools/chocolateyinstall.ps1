$ErrorActionPreference = 'Stop'
$checksum = 'de08966a570e84271098e9b09245bdc54e78f7a428f49966a488110ae75bf4f8'
$url = 'https://downloads.tableau.com/tssoftware/TableauPrep-2021-1-2.exe'

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
