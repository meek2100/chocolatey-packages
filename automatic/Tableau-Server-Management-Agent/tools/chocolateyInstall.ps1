$ErrorActionPreference = 'Stop'
$checksum = '6a892e376b543d11d5a0655cc4045f30e7c8df25c81d5f7115ebe9d470114ce0'
$url = 'https://downloads.tableau.com/tssoftware/Tabrmt-Agent-64bit-2022-1-3.exe'

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
