$ErrorActionPreference = 'Stop'
$checksum = 'e981ff8a3b4093a9a7ee61b8202a2f5047deb597b794c4ec5238a4423cad6a1e'
$url = 'https://downloads.tableau.com/tssoftware/Tabrmt-Master-64bit-2021-4-0.exe'

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
