$ErrorActionPreference = 'Stop';
$checksum = 'a69fbfe586fdbf93f87f7db70cbe6fd2ebcc7b222d6e8315ff7780d490f97594'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/8.0.10/xampp-windows-x64-8.0.10-0-VS16-installer.exe'

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
