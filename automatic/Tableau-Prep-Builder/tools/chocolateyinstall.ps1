$ErrorActionPreference = 'Stop'
$checksum = '403a5e0573ea6601fe1c86bd3bb38a5338bbe7026f845d2a0f34ded7ed07ecf6'
$url = 'https://downloads.tableau.com/tssoftware/TableauPrep-2022-3-1.exe'

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
