$ErrorActionPreference = 'Stop'
$checksum = '61000169e39d09d7ad21151af2f31682bcdb239b9141a3b35b4a3c43271bfc04'
$url = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-2020-4-3.exe'

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
