$ErrorActionPreference = 'Stop'
$checksum = 'd0dd7f28f668280bdc6c49069dcb9e659250e6b92a1b6fbf0f584e41b1677aee'
$url = 'https://downloads.tableau.com/tssoftware/TableauServer-64bit-2022-3-0.exe'

$packageArgs = @{
  packageName    = 'Tableau-Server'
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
