$ErrorActionPreference = 'Stop'
$checksum = 'e169fe8a22616b0588e05bcbbc0d7abd612cd1ae120b4c1c6b22fece0899a815'
$url = 'https://akamaicdn.webex.com/client/WBXclient-39.7.7-27/webexapp.msi'

$packageArgs = @{
  packageName    = 'airparrot2'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  fileType       = 'msi'
  url            = $url
  silentArgs     = '/quiet /norestart'
  validExitCodes = @(0)
  softwareName   = 'airparrot2*'
  checksum       = $checksum
  checksumType   = 'sha256'
}

Install-ChocolateyPackage @packageArgs
