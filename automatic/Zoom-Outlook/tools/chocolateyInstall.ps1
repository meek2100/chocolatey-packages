$ErrorActionPreference = 'Stop'
 
$checksum = 'b878f884b53b2e1ca2d610ca815c589920ac7732be279a083571af799d6eb2af'
$url = 'https://zoom.us/client/5.1.27830.0612/ZoomOutlookPluginSetup.msi'

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
