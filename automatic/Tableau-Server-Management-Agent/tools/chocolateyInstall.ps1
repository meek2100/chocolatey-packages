$ErrorActionPreference = 'Stop'
$checksum = '4cdb6de5961980c067244e5a31b7e39935b1f63b95190bde1e54060085842c7f'
$url = 'https://downloads.tableau.com/tssoftware/Tabrmt-Agent-64bit-2021-2-0.exe'

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
