$ErrorActionPreference = 'Stop'
 
$checksum = '8efbd28f8aa8912d8f3695686f315667f16fd1296dedb79d2b1ad9b6c5f8b77b'
$url = 'https://zoom.us/client/6.1.5.1062/ZoomOutlookPluginSetup.msi'

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
