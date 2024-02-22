$ErrorActionPreference = 'Stop'
$checksum = 'e617be72aea8e235b73f0334659c13b9f6d9070446fa6ddd24314ede1d0335a7'
$url = 'https://downloads.tableau.com/tssoftware/TableauPrep-2024-1-0.exe'

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
