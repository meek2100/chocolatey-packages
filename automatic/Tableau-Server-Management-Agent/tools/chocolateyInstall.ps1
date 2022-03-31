$ErrorActionPreference = 'Stop'
$checksum = 'a1befa3380f331eadadbf3fb871a856bd3e425b4eda588cc0cabe9053f5abd85'
$url = 'https://downloads.tableau.com/tssoftware/Tabrmt-Agent-64bit-2022-1-0.exe'

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
