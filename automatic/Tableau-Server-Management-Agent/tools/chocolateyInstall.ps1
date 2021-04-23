$ErrorActionPreference = 'Stop'
$checksum = '9b47e850780cf3b703782c557881c797ef87f2618404674466775ec048500748'
$url = 'https://downloads.tableau.com/tssoftware/Tabrmt-Agent-64bit-2021-1-1.exe'

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
