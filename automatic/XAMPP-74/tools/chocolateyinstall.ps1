$ErrorActionPreference = 'Stop';
$checksum = 'd4d32526599024b2ffc9b5732c9386b7a5b53750cdfbdc934c5b05df1abaa284'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/7.4.21/xampp-windows-x64-7.4.21-0-VC15-installer.exe'

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
