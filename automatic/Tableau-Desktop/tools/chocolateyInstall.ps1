$ErrorActionPreference = 'Stop'
$checksum = 'ea0e93a2957d10d022c17d3f2e05335fa46818bbe1cb561389e93ed798f6595d'
$url = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-2021-1-2.exe'

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
