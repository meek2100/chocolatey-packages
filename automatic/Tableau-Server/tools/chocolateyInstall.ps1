$ErrorActionPreference = 'Stop'
$checksum = '73fb1dacbfe7716002a8cbde69d593fd8949aa7b76185859a690a3a47d4a8752'
$url = 'https://downloads.tableau.com/tssoftware/TableauServer-64bit-2021-1-0.exe'

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
