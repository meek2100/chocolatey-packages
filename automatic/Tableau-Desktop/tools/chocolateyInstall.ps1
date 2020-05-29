$ErrorActionPreference = 'Stop'
$checksum = '07524c3e94e12a9bbd0d17ad26faffc87c06545ec1b528687af643a8bac68ce6'
$url = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-2020-2-1.exe'

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
