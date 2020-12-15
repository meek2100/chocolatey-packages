$ErrorActionPreference = 'Stop'
$checksum = '9291773f887fc4516dbb46ee5575a70b6dc86689ad4cf787931a3e43f40766f1'
$url = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-2020-4-0.exe'

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
