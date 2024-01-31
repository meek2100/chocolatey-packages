$ErrorActionPreference = 'Stop'
$checksum = 'eb2bda6419efd341bc09f3e42b2a5f1e7f9b1c2af9fc0bf6a459b677a14d25f7'
$url = 'https://downloads.tableau.com/tssoftware/TableauServer-64bit-2023-3-2.exe'

$packageArgs = @{
  packageName    = 'Tableau-Server'
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
