# Ensure TLS 1.2 or 1.3 is used
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12 -bor [Net.SecurityProtocolType]::Tls13

$ErrorActionPreference = 'Stop'
Import-Module au

function global:au_SearchReplace {
    @{
        'tools\ChocolateyInstall.ps1' = @{
            "(^[$]checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
            "(^[$]url\s*=\s*)('.*')" = "`$1'$($Latest.Url)'"
        }
    }
}

function global:au_GetLatest {
    $download_page_url = 'https://www.tableau.com/support/releases'
    $url_part1 = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-'
    $url_part2 = '.exe'
    
    $homepage_content = Invoke-WebRequest -UseBasicParsing -Uri $download_page_url -UserAgent "curl/8.9.1" 

    # Get Version
    if ($homepage_content -match '\/(\d{4}\.\d{0,2}[.0-9]{0,2})') {
        $real_version = $matches[1]
    } else {
        throw "Version not found on the page"
    }

    if ($real_version -notmatch '\d{4}\.\d{0,2}\.\d{1,2}') {
        $version = "$real_version.0"
    } else {
        $version = $real_version
    }

    $url_version = $version -replace "\.", "-"
    $url = "$url_part1$url_version$url_part2"

    $Latest = @{ URL = $url; Version = $version }
    return $Latest
}

update
