$ErrorActionPreference = 'Stop'
$checksum = '623c75d9c9a1ba1e74214ab3aeb189090119cdd1c2572158de08d40015e5f10b'
$url = 'https://downloads.tableau.com/tssoftware/TableauPrep-2021-1-1.exe'

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
