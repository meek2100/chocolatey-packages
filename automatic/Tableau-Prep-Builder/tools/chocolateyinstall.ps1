$ErrorActionPreference = 'Stop'
$checksum = '2f1a2d06f8e3977c8ccdefd41518c017497b65fc5d03eb24a4d25a48140fea2e'
$url = 'https://downloads.tableau.com/tssoftware/TableauPrep-2022-2-2.exe'

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
