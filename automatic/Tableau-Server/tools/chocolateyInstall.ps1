$ErrorActionPreference = 'Stop'
$checksum = 'af222d723bfcc200b5294168d8785f5420fd0152863f086df43b9e87299b7cce'
$url = 'https://downloads.tableau.com/tssoftware/TableauServer-64bit-2022-1-2.exe'

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
