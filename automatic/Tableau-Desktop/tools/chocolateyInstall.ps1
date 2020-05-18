$ErrorActionPreference = 'Stop'
$checksum = '53418ffb683644bbc8290fd21ef0605f3f6df09121e882224368a863d679960f'
$url = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-2020-2-0.exe'

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
