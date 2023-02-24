$ErrorActionPreference = 'Stop'
$checksum = '979fabbd02ecdc9228f22250e2f030b372a488aea0fc08f89df94f8979312046'
$url = 'https://downloads.tableau.com/tssoftware/TableauServer-64bit-2022-3-4.exe'

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
