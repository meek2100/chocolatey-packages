$ErrorActionPreference = 'Stop'
$checksum = 'b7e546c26668d2431f56045211e693da5415cfb25861d839e4d1fff9a9bee9b7'
$url = 'https://downloads.tableau.com/tssoftware/TableauPrep-2021-2-1.exe'

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
