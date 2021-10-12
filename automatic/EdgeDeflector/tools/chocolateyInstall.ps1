$ErrorActionPreference = 'Stop'
$checksum = 'df81b4af738b4222662e290ace98503121d99e204cba4834effb29f1c0fd4afc'
$url = 'https://github.com/da2x/EdgeDeflector/releases/download/v1.2.3.0/EdgeDeflector_install.exe'

$packageArgs = @{
  packageName    = 'EdgeDeflector'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  fileType       = 'exe'
  url            = $url
  silentArgs     = '/quiet /norestart'
  validExitCodes = @(0)
  softwareName   = 'EdgeDeflector*'
  checksum       = $checksum
  checksumType   = 'sha256'
}

Install-ChocolateyPackage @packageArgs
