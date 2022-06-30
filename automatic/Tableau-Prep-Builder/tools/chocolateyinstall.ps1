$ErrorActionPreference = 'Stop'
$checksum = '8c854f98172f99240e4f46451ae8f8568c230380d7836d1fd6d70ba51bb7411a'
$url = 'https://downloads.tableau.com/tssoftware/TableauPrep-2022-2-1.exe'

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
