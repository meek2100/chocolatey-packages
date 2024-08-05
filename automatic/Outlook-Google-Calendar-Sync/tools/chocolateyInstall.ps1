$ErrorActionPreference = 'Stop'
$checksum = '81131729d531f1ba42c2673f83d495b39e3a32ad025d73081b8d6d09a6009124'
$url = 'https://github.com/phw198/OutlookGoogleCalendarSync/releases/download/v2.11.0-beta/OGCS_Setup.exe'

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
