$ErrorActionPreference = 'Stop'
 
$checksum = 'f685564b386601628ebf66bcfd02b00b03fd99e93c9287de39ad0408c5bd61b7'
$url = 'https://zoom.us/client/5.10.3.40/ZoomOutlookPluginSetup.msi'

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
