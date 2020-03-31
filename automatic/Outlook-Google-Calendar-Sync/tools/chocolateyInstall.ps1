$ErrorActionPreference = 'Stop'
$checksum = '63ebb1e82542fb0e4a6cab0d34f89bafff183930557d90963658b64c8f6cc290'
$url = 'https://github.com/phw198/OutlookGoogleCalendarSync/releases/download/v2.8.0-beta/Setup.exe'

$packageArgs = @{
  packageName    = 'outlook-google-calendar-sync'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  fileType       = 'exe'
  url            = $url
  silentArgs     = '/quiet /norestart'
  validExitCodes = @(0)
  softwareName   = 'outlook-google-calendar-sync*'
  checksum       = $checksum
  checksumType   = 'sha256'
}

Install-ChocolateyPackage @packageArgs
