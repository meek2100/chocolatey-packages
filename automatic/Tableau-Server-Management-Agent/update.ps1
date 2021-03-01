$ErrorActionPreference = 'Stop'
import-module au

$download_page_url = 'https://www.tableau.com/support/releases/server-management'
$url_part1 = 'https://downloads.tableau.com/tssoftware/Tabrmt-Agent-64bit-'
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
    $homepage_content -match '\/\d{4}\.\d{0,2}[.0-9]{0,2}'| Out-Null
    $real_version = $matches[0] -replace "/", ""
	if ($real_version -match '\d{4}\.\d{0,2}\.\d{1,2}') {
		$version = $real_version
		}  Else {
		$version = $real_version + ".0"
		}
	$url_version = $version -replace "\.", "-"
	$url = $url_part1 + $url_version + $url_part2
    

    $Latest = @{ URL = $url; Version = $version }
    return $Latest
}

update
