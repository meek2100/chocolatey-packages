$ErrorActionPreference = 'Stop'
$checksum = '43d548509ab506f5dc0732e14fe49116230b24b60796f07d0cb0cce42f5f98b0'
$url = 'https://downloads.tableau.com/tssoftware/TableauServer-64bit-2022-1-0.exe'

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
