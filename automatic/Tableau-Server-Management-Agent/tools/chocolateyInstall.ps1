$ErrorActionPreference = 'Stop'
$checksum = 'c1c54351f1a2698f7e73389c8a02186acf97e21ec01797b5b50589a6dee903fa'
$url = 'https://downloads.tableau.com/tssoftware/Tabrmt-Agent-64bit-2020-4-2.exe'

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
