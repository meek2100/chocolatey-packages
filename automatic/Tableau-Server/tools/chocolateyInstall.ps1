$ErrorActionPreference = 'Stop'
$checksum = 'dd3f98918151545d6fd49c2144d78ee46719a8c2a7ed7b474515c6a6317de003'
$url = 'https://downloads.tableau.com/tssoftware/TableauServer-64bit-2022-3-2.exe'

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
