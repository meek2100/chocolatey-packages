$ErrorActionPreference = 'Stop'
$checksum = '6cd3d07a8d267b3fff7f16741f6d6d1d60f6a1c982e169c70b2947e4536852ff'
$url = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-2020-4-1.exe'

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
