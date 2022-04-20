$ErrorActionPreference = 'Stop';
$checksum = 'c4ebd1fff2aaec554dff99a69a19aa171b0e1c46a7504758710309489aac1dc1'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/7.4.29/xampp-windows-x64-7.4.29-0-VC15-installer.exe'

$packageArgs = @{
  packageName    = 'XAMPP-74'
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
