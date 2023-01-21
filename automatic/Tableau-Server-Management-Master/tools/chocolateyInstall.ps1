$ErrorActionPreference = 'Stop'
$checksum = '2eaecbb761a81e78602b6e3abc8f47001369ff717ba1f387dba9395e46b69073'
$url = 'https://downloads.tableau.com/tssoftware/Tabrmt-Master-64bit-2022-3-2.exe'

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
