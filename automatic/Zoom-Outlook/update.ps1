$ErrorActionPreference = 'Stop'
import-module chocolatey-au

$download_page_url = 'https://zoom.us/rest/download?os=win'
$url_part1 = 'https://zoom.us/client/'
$url_part2 = '/ZoomOutlookPluginSetup.msi'

function global:au_SearchReplace {
    @{
        'tools\ChocolateyInstall.ps1' = @{
            "(^[$]checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum32)'"
            "(^[$]url\s*=\s*)('.*')"   = "`$1'$($Latest.Url)'"
        }
     }
}

function global:au_GetLatest {
    $response = Invoke-WebRequest -UseBasicParsing -Uri $download_page_url
	$payload = ConvertFrom-Json $response
	
     # Get Version	
	$version = $payload.result.downloadVO.outlookPlugin.version
    $url = $url_part1 + $version + $url_part2
    

    $Latest = @{ URL = $url; Version = $version }
    return $Latest
}

update
