﻿$ErrorActionPreference = 'Stop'
$checksum = 'b495c3bb3aca0af002720da00569273e2aa458943c7375846f48251355bd2396'
$url = 'https://downloads.tableau.com/tssoftware/TableauServer-64bit-2021-4-4.exe'

$packageArgs = @{
  packageName    = 'Tableau-Server'
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
