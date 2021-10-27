$ErrorActionPreference = 'Stop'
$checksum = '0a6658f103b94eb6222facded3aee8c5d076823987caf629bad24ae098cce3e4'
$url = 'https://downloads.tableau.com/tssoftware/Tabrmt-Agent-64bit-2021-3-3.exe'

$packageArgs = @{
  packageName    = 'Tableau-Server-Management-Agent'
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
