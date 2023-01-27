$ErrorActionPreference = 'Stop'
$checksum = '881220ee6fab65385acebca544a03dcb92795553cfb31c15bef9627a46f677d9'
$url = 'https://downloads.tableau.com/tssoftware/TableauPrep-2022-4-1.exe'

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
