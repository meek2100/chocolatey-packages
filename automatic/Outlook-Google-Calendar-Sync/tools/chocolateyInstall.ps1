$ErrorActionPreference = 'Stop'
$checksum = '61B307AE745134CC5772B8E8277454199FFFF0520A0856742ADBF4BCBC70F8DE'
$url = 'https://github.com/phw198/OutlookGoogleCalendarSync/releases/download/v2.9.0-beta/Setup.exe'

$packageArgs = @{
  packageName    = 'outlook-google-calendar-sync'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  fileType       = 'exe'
  url            = $url
  silentArgs     = '/quiet /norestart'
  validExitCodes = @(0)
  softwareName   = 'Outlook Google Calendar Sync*'
  checksum       = $checksum
  checksumType   = 'sha256'
}

Install-ChocolateyPackage @packageArgs
