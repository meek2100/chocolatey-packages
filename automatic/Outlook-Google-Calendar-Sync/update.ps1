$ErrorActionPreference = 'Stop'
import-module au

$download_page_url = 'https://github.com/phw198/OutlookGoogleCalendarSync/releases'
$url_part1 = 'https://github.com/phw198/OutlookGoogleCalendarSync/releases/download/'
$url_part2 = '/OGCS_Setup.exe'

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
    $homepage_content -match 'v\d+\.\d+\.\d+\-beta'| Out-Null
    $url_version = $matches[0] 
	$recode_version = $url_version -replace "v", ""
	$version = $recode_version -replace "-beta", ""
    $url = $url_part1 + $url_version + $url_part2
    

    $Latest = @{ URL = $url; Version = $version }
    return $Latest
}

update
