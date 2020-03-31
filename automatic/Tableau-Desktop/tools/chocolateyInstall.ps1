$ErrorActionPreference = 'Stop'
$checksum = '8ea7f27447b99dc754cb99dd1507bb293cffca9ff8890729186a5ab96ac4a455'
$url = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-2020-1-2.exe'

$packageArgs = @{
  packageName    = 'tableau-desktop'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  fileType       = 'exe'
  url            = $url
  silentArgs     = '/quiet /norestart ACCEPTEULA=1'
  validExitCodes = @(0)
  softwareName   = 'tableau-desktop*'
  checksum       = $checksum
  checksumType   = 'sha256'
}

Install-ChocolateyPackage @packageArgs
