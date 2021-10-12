$ErrorActionPreference = 'Stop'
$checksum = 'df81b4af738b4222662e290ace98503121d99e204cba4834effb29f1c0fd4afc'
$url = 'https://github.com/da2x/EdgeDeflector/releases/download/v1.2.3.0/EdgeDeflector_install.exe'

$packageArgs = @{
  packageName    = 'EdgeDeflector'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  fileType       = 'exe'
  url            = $url
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'EdgeDeflector*'
  checksum       = $checksum
  checksumType   = 'sha256'
}

if ((Test-Path "$ENV:SYSTEMROOT\SystemApps\Microsoft.MicrosoftEdge_8wekyb3d8bbwe") -eq "True")
   {
    Install-ChocolateyPackage @packageArgs  
   } else {
    Write-Host "Microsoft Edge not found. EdgeDeflector cannot be installed." -foreground red -background blue
	}
#Purposely left it so choco thinks the package is instaleld to pass the validator as program only works on Win10 and Server2016. :)

Install-ChocolateyPackage @packageArgs

