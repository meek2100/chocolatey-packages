$ErrorActionPreference = 'Stop';
$checksum = '6f3e20916627060365a90dfd361ea42bffcda0cf5890e937217c4c3fcb9f0ed0'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/8.2.4/xampp-windows-x64-8.2.4-0-VS16-installer.exe'

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
