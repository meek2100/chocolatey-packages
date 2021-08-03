$ErrorActionPreference = 'Stop';
$checksum = '82a1d80c07c1af02084954d65edd1f8923e02966735a213a4bef1821bf6dbf66'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/7.4.22/xampp-windows-x64-7.4.22-0-VC15-installer.exe'

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
