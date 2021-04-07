$ErrorActionPreference = 'Stop'
$checksum = '1ca7badca9fbd2147474bcef6c1fefe55e62f8ba73ff5c8ddb3603048ec9d430'
$url = 'https://downloads.tableau.com/tssoftware/TableauPrep-2021-1-3.exe'

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
