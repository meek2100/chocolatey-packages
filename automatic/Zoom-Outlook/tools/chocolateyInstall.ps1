$ErrorActionPreference = 'Stop'
 
$checksum = '7812ec892ac5998591a9a3ac26f1fb670a292ba83fbcafaa92bc97e3e9a4bad8'
$url = 'https://zoom.us/client/5.3.52553.0918/ZoomOutlookPluginSetup.msi'

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
