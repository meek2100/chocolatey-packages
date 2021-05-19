$ErrorActionPreference = 'Stop'
$checksum = '21676d821db6c731792da5602f915b3acbbc6c2a2db04738ff052a3599e749d9'
$url = 'https://downloads.tableau.com/tssoftware/TableauServer-64bit-2021-1-2.exe'

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
