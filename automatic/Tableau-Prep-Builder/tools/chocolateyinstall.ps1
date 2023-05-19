$ErrorActionPreference = 'Stop'
$checksum = 'c1517b01c58beda9f4810bf5c19fc7b6f2004660c36c7dcd54b160fcb67e6692'
$url = 'https://downloads.tableau.com/tssoftware/TableauPrep-2023-1-2.exe'

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
