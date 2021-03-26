$ErrorActionPreference = 'Stop'
$checksum = '920686a621edb14fb2803f563fb6c490e8feb54f88596ce2f83363157eb820a8'
$url = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-2021-1-0.exe'

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
