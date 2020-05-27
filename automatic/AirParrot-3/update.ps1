$ErrorActionPreference = 'Stop'
import-module au

$download_page_url = 'https://www.airsquirrels.com/airparrot/release-notes/win'
$url_part1 = 'https://download.airsquirrels.com/AirParrot3/Windows/AirParrot-'
$url32_part2 = '-32.msi'
$url64_part2 = '-64.msi'

function global:au_SearchReplace {
    @{
        'tools\ChocolateyInstall.ps1' = @{
            "(^[$]checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum32)'"
			"(^[$]checksum64\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum64)'"
            "(^[$]url\s*=\s*)('.*')"   = "`$1'$($Latest.Url32)'"
			"(^[$]url64\s*=\s*)('.*')"   = "`$1'$($Latest.Url64)'"
        }
     }
}

function global:au_GetLatest {
    $homepage_content = Invoke-WebRequest -UseBasicParsing -Uri $download_page_url

     # Get Version
    $homepage_content -match 'Version 3\.\d+\.\d+'| Out-Null
	$version = $matches[0] -replace "Version ", ""
    $url32 = $url_part1 + $version + $url32_part2
	$url64 = $url_part1 + $version + $url64_part2
    

    $Latest = @{ URL32 = $url32; URL64 = $url64; Version = $version }
    return $Latest
}

update
