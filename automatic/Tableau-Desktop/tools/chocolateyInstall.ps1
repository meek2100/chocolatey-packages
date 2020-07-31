$ErrorActionPreference = 'Stop'
$checksum = '1f903d99baf04c962e9050d8048f9abc1c43013bd617718ca9a75b779292d575'
$url = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-2020-2-4.exe'

$packageArgs = @{
  packageName    = 'Tableau-Desktop'
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
