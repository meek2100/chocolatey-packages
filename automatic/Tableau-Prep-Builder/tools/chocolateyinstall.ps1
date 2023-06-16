$ErrorActionPreference = 'Stop'
$checksum = 'c62463d2747819c48dd0cf28eb8d6fd47eccb36f1b404117dc99970482663159'
$url = 'https://downloads.tableau.com/tssoftware/TableauPrep-2023-2-0.exe'

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
