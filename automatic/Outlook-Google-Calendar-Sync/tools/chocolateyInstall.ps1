$ErrorActionPreference = 'Stop'
$checksum = '032226eba234f2cdc4c538184f3620effe824c01ff68ab961ad75cca79848547'
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
