$ErrorActionPreference = 'Stop'
$checksum = 'a1a433a131c0f178270a0c90c406b798d04dc17a3a6f9378a1b48077f71a5513'
$url = 'https://downloads.tableau.com/tssoftware/TableauServer-64bit-2021-3-1.exe'

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
