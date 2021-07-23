$ErrorActionPreference = 'Stop'
$checksum = '8fc1a837cf3372d37cc5906629075db8675cc44a0fd22dc86ba73b4f4313ced4'
$url = 'https://downloads.tableau.com/tssoftware/TableauServerTabcmd-64bit-2021-2-1.exe'

$packageArgs = @{
  packageName    = 'Tableau-Server-Tabcmd'
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
