$ErrorActionPreference = 'Stop'
$checksum = '6624d01755a7dfa9c430618321fdde1c1e14735cc78a4795b5db710334e01aca'
$url = 'https://downloads.tableau.com/tssoftware/TableauPrep-2023-2-2.exe'

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
