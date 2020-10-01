$ErrorActionPreference = 'Stop'
$checksum = '8e4551cb01d7e3a9cec4809a869bd61af0caa0fb1d35d9d789db89fa31c031dd'
$url = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-2020-3-1.exe'

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
