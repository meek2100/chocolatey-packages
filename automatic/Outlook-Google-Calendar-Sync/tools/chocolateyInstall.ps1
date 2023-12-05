$ErrorActionPreference = 'Stop'
$checksum = '25c286906424f7a5badcd1b4808dff9b2e37e29799b91d1c59223c6b20fcda5a'
$url = 'https://github.com/phw198/OutlookGoogleCalendarSync/releases/download/v2.10.0-beta/OGCS_Setup.exe'

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
