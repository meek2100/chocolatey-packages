$ErrorActionPreference = 'Stop'
$checksum = '9c2d9c58ce7fa49e1fa5aca50661b192dcc9595eabd15a92fc6e3be8e9124783'
$url = 'https://akamaicdn.webex.com/client/WBXclient-40.2.10-14/webexapp.msi'

$packageArgs = @{
  packageName    = 'webex-meetings-desktop'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  fileType       = 'msi'
  url            = $url
  silentArgs     = '/quiet /norestart'
  validExitCodes = @(0)
  softwareName   = 'webex-meetings-desktop*'
  checksum       = $checksum
  checksumType   = 'sha256'
}

Install-ChocolateyPackage @packageArgs
