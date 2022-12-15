$ErrorActionPreference = 'Stop'
$checksum = '3423d746a772df5a8d26504ff7949f1b34c670b748dead7a9761f439cecddf31'
$url = 'https://downloads.tableau.com/tssoftware/TableauPrep-2022-4-0.exe'

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
