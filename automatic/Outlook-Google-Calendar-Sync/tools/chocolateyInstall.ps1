$ErrorActionPreference = 'Stop'
$checksum = '250ec7b065cbd91a72590b154e6e64f4d905675b823686b2da77daa04f241e94'
$url = 'https://github.com/phw198/OutlookGoogleCalendarSync/releases/download/v2.12.0-beta/OGCS_Setup.exe'

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
