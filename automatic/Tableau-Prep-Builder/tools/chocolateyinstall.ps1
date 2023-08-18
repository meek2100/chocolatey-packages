$ErrorActionPreference = 'Stop'
$checksum = 'a838538011e9643047337f7d7836cb77711a256cf939ef23befe677bc87b54a5'
$url = 'https://downloads.tableau.com/tssoftware/TableauPrep-2023-2-1.exe'

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
