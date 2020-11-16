$ErrorActionPreference = 'Stop'
 
$checksum = 'c9ac18a3886dbbbc08a582fae0936979a1cde628257ed17ae0bdc9454865b744'
$url = 'https://zoom.us/client/5.4.58864.1113/ZoomOutlookPluginSetup.msi'

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
