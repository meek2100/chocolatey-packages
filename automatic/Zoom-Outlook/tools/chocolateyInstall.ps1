$ErrorActionPreference = 'Stop'
 
$checksum = 'b461eb454d3a464a0fcdc9628c1b763593147b93cfa61e60742566904b5d713f'
$url = 'https://zoom.us/client/5.11.3.56/ZoomOutlookPluginSetup.msi'

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
