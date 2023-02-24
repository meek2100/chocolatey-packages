$ErrorActionPreference = 'Stop'
$checksum = 'd200f6260d6360d54a71f4ee386a56ff6585dabbfd814474b340df0f23479b7e'
$url = 'https://downloads.tableau.com/tssoftware/TableauPrep-2022-4-2.exe'

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
