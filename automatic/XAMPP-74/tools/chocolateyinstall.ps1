$ErrorActionPreference = 'Stop';
$checksum = '58d91444adfbdf3858b917cefaf921c5a6310144be1289190c055ae6118ae345'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/7.4.26/xampp-windows-x64-7.4.26-0-VC15-installer.exe'

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
