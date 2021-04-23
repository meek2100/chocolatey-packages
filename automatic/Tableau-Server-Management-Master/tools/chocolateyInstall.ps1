$ErrorActionPreference = 'Stop'
$checksum = '751e9718d96f5866321936ad616d883774cc25c038f6fbedff93d4cc32dcc1cd'
$url = 'https://downloads.tableau.com/tssoftware/Tabrmt-Master-64bit-2021-1-1.exe'

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
