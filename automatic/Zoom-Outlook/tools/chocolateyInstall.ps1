$ErrorActionPreference = 'Stop'
 
$checksum = '43811590e3f11442453c6875f9274c748a036d10afa5a8fc602662c8d2214ccf'
$url = 'https://zoom.us/client/5.7.3.76/ZoomOutlookPluginSetup.msi'

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
