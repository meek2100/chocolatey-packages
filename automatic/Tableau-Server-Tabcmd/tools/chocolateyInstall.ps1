$ErrorActionPreference = 'Stop'
$checksum = '64d84cec779adc5d9f26e7cad99e17e2bbec906a583399421778b924d8032ae6'
$url = 'https://downloads.tableau.com/tssoftware/TableauServerTabcmd-64bit-2021-1-1.exe'

$packageArgs = @{
  packageName    = 'Tableau-Server-Tabcmd'
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
