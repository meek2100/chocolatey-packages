$ErrorActionPreference = 'Stop'
$checksum = '31eb46be1643ddb208b78ceb49060f9b1d62f48f614416afa6f0c6b9ef7cf5de'
$url = 'https://downloads.tableau.com/tssoftware/TableauPrep-2021-3-1.exe'

$packageArgs = @{
  packageName    = 'Tableau-Prep-Builder'
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
