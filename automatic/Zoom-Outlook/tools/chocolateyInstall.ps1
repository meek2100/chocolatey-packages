$ErrorActionPreference = 'Stop'
 
$checksum = 'd0c745f2bd1dabbdcc878e7f210de4ca96930e274debc1d9dbffc36e5b5cc473'
$url = 'https://zoom.us/client/5.11.0.53/ZoomOutlookPluginSetup.msi'

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
