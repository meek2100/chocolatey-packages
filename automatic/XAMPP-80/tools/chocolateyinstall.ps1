$ErrorActionPreference = 'Stop';
$checksum = '22570e638867701e19ffa88a1da7ad147374b23eb4634ac54accc768fc9cc62d'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/8.0.6/xampp-windows-x64-8.0.6-0-VS16-installer.exe'

$packageArgs = @{
  packageName    = 'XAMPP-80'
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
