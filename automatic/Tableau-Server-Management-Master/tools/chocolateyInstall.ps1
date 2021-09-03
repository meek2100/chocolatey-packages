$ErrorActionPreference = 'Stop'
$checksum = '3e23780f029d88bd467a61bb73f091f6be660de8453eb313b395edf428a92cb1'
$url = 'https://downloads.tableau.com/tssoftware/Tabrmt-Master-64bit-2021-2-2.exe'

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
