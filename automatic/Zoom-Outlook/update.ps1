$ErrorActionPreference = 'Stop'
import-module au

$download_page_url = 'https://zoom.us/download#client_4meeting'
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
    $homepage_content = Invoke-WebRequest -UseBasicParsing -Uri $download_page_url

     # Get Version
    $homepage_content -match 'Version \d+\.\d+\.\d{5}\.\d{4}'| Out-Null
    $version = $matches[0] -replace "Version ", ""
    $url = $url_part1 + $version + $url_part2
    

    $Latest = @{ URL = $url; Version = $version }
    return $Latest
}

update
