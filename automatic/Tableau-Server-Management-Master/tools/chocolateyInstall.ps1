$ErrorActionPreference = 'Stop'
$checksum = 'ec3f98ad55ab4f3943132e7339d461724bb3854c05d0eb488de184f814a65115'
$url = 'https://downloads.tableau.com/tssoftware/Tabrmt-Master-64bit-2021-3-0.exe'

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
