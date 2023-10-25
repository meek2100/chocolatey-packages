$ErrorActionPreference = 'Stop'
$checksum = 'd406852d6f8272706f31a1d3793b301283a5146e8534b36ae6b4e1afae0ceab4'
$url = 'https://downloads.tableau.com/tssoftware/Tabrmt-Master-64bit-2023-3-0.exe'

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
