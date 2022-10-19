$ErrorActionPreference = 'Stop'
$checksum = '78a852775f3bf431a9a479ea66e967b53f9cc5a86ba17b51ebb5e991e1e64e4e'
$url = 'https://downloads.tableau.com/tssoftware/TableauServerTabcmd-64bit-2022-3-0.exe'

$packageArgs = @{
  packageName    = 'Tableau-Server-Tabcmd'
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
