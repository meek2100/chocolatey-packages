$ErrorActionPreference = 'Stop'
 
$checksum = '2cb1983591d999e3d2806e3794751fe802b52d50094995c3b0a63f69774451b6'
$url = 'https://zoom.us/client/5.2.44833.0826/ZoomOutlookPluginSetup.msi'

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
