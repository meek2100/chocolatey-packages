$ErrorActionPreference = 'Stop'
$checksum = '5c399a73645f5137159cba55d9609eecb1fd405a0d2cc73f060ee6978cbbafb4'
$url = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-2020-2-2.exe'

$packageArgs = @{
  packageName    = 'Tableau-Desktop'
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
