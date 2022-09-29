$ErrorActionPreference = 'Stop'
$checksum = '90e52799054ee6566c13a57d6300b44e07fade0421f27c52b8795d2a5fd7eadb'
$url = 'https://downloads.tableau.com/tssoftware/TableauPrep-2022-2-3.exe'

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
