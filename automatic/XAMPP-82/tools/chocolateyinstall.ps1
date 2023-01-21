$ErrorActionPreference = 'Stop';
$checksum = '06a8bfda66dbe546ecb6ac3afac13a07263f6cb6abbb1d278c994b127e38a4c8'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/8.2.0/xampp-windows-x64-8.2.0-0-VS16-installer.exe'

$packageArgs = @{
  packageName    = 'XAMPP-82'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  fileType       = 'exe'
  url            = $url
  silentArgs     = "--mode unattended --launchapps 0"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'xampp*'
  checksum       = $checksum
  checksumType   = 'sha256'
}

Install-ChocolateyPackage @packageArgs
