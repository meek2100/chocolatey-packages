$ErrorActionPreference = 'Stop'
$checksum = '79b7fbcbec7289f2141e933259a9ad87be9ad6298262e9d4d118dce58c0a7a72'
$url = 'https://downloads.tableau.com/tssoftware/TableauServerTabcmd-64bit-2020-4-2.exe'

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
