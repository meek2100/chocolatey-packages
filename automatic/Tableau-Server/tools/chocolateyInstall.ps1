$ErrorActionPreference = 'Stop'
$checksum = 'd04b0d49e18765921030a78a4b15ff25f2767e59efd3e59995ff8d89be4986d6'
$url = 'https://downloads.tableau.com/tssoftware/TableauServer-64bit-2022-3-3.exe'

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
