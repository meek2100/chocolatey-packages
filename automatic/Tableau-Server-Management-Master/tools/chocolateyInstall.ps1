$ErrorActionPreference = 'Stop'
$checksum = '1cc5ea170ca88d96f3f5bcf2e241842039f5b147f72074db14bf8e9010fd3108'
$url = 'https://downloads.tableau.com/tssoftware/Tabrmt-Master-64bit-2023-3-1.exe'

$packageArgs = @{
  packageName    = 'Tableau-Server-Management-Master'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  fileType       = 'exe'
  url            = $url
  silentArgs     = '/quiet /norestart ACCEPTEULA=1'
  validExitCodes = @(0)
  softwareName   = 'Tableau*'
  checksum       = $checksum
  checksumType   = 'sha256'
}

Install-ChocolateyPackage @packageArgs
