$ErrorActionPreference = 'Stop';
$checksum = 'ead3846e8fc6869463fe0dc8838155b9f8351f66bcc8ee426f156dcc9aa43667'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/8.1.0/xampp-windows-x64-8.1.0-0-VS16-installer.exe'

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
