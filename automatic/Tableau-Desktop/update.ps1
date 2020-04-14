$ErrorActionPreference = 'Stop'
import-module au

$download_page_url = 'https://www.tableau.com/support/releases'
$url_part1 = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-'
$url_part2 = '.exe'

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
    $homepage_content -match '\/\d+\.\d+\.\d+'| Out-Null
    $version = $matches[0] -replace "/", ""
	$url_version = $version -replace "\.", "-"
    $url = $url_part1 + $url_version + $url_part2
    

    $Latest = @{ URL = $url; Version = $version }
    return $Latest
}

update
