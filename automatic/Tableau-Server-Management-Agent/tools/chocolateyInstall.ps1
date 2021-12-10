$ErrorActionPreference = 'Stop'
$checksum = '3a253e5a9e3d827c14ea3abaa2ce9f72b7b71dfcd22873f231972aaf31a8cae6'
$url = 'https://downloads.tableau.com/tssoftware/Tabrmt-Agent-64bit-2021-4-0.exe'

$packageArgs = @{
  packageName    = 'Tableau-Server-Management-Agent'
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
