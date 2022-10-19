$ErrorActionPreference = 'Stop'
$checksum = '906bf592beb7b706b8077e1ba815f70dd65357050f52646017f5abec1ebb1412'
$url = 'https://downloads.tableau.com/tssoftware/TableauPrep-2022-3-0.exe'

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
