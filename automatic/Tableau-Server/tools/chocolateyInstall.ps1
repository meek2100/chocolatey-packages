$ErrorActionPreference = 'Stop'
$checksum = 'e5adf2778da85cfdcd0efab990eb4fdb472b1c5e273e1147c15615fa2cf05105'
$url = 'https://downloads.tableau.com/tssoftware/TableauServer-64bit-2021-4-3.exe'

$packageArgs = @{
  packageName    = 'Tableau-Server'
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
