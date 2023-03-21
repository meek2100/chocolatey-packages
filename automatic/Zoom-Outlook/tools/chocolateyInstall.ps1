$ErrorActionPreference = 'Stop'
 
$checksum = 'b08a72e2b89059ad0e2dd9cb2f2047461ed12a3535516ce6e7d37370cec40065'
$url = 'https://zoom.us/client/5.14.0.849/ZoomOutlookPluginSetup.msi'

$packageArgs = @{
  packageName    = 'Zoom-Outlook'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  fileType       = 'msi'
  url            = $url
  silentArgs     = '/quiet /norestart'
  validExitCodes = @(0)
  softwareName   = 'Zoom Outlook*'
  checksum       = $checksum
  checksumType   = 'sha256'
}

Install-ChocolateyPackage @packageArgs
