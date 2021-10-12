$ErrorActionPreference = 'Stop'
import-module au

$download_page_url = 'https://github.com/da2x/EdgeDeflector/releases'
$url_part1 = 'https://github.com/da2x/EdgeDeflector/releases/download/'
$url_part2 = '/EdgeDeflector_install.exe'

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
    $homepage_content -match 'v\d+\.\d+\.\d+.\d+'| Out-Null
    $url_version = $matches[0] 
    $url = $url_part1 + $url_version + $url_part2
    

    $Latest = @{ URL = $url; Version = $version }
    return $Latest
}

update
