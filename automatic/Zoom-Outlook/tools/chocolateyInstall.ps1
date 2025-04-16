$ErrorActionPreference = 'Stop'
 
$checksum = '6de157ad6de38d6a8ad70d371b37bf997670064c1f86cd261eaf61131840ec83'
$url = 'https://zoom.us/client/6.4.5.1121/ZoomOutlookPluginSetup.msi'

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
