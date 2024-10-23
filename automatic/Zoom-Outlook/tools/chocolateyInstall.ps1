$ErrorActionPreference = 'Stop'
 
$checksum = 'dc70fc8c9dab6bbaabf15e6401d50afdecaf76c111325a8f7845ecf20d60ba23'
$url = 'https://zoom.us/client/6.2.5.1070/ZoomOutlookPluginSetup.msi'

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
