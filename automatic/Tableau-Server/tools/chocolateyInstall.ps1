$ErrorActionPreference = 'Stop'
$checksum = '0bb04df47cf0f90a33305a994778625a379d4ff2850f61e82ca153c9104049c6'
$url = 'https://downloads.tableau.com/tssoftware/TableauServer-64bit-2021-2-0.exe'

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
