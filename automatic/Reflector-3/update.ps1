$ErrorActionPreference = 'Stop'
import-module au

$download_page_url = 'https://www.airsquirrels.com/reflector/release-notes/windows'
$url_part1 = 'https://download.airsquirrels.com/Reflector3/Windows/Reflector'
$url_part2 = '-64.msi'

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
    $homepage_content -match 'Version \d+\.\d+\.\d+'| Out-Null
	$version = $matches[0] -replace "Version ", ""
    $url = $url_part1 + $version + $url_part2
    

    $Latest = @{ URL = $url; Version = $version }
    return $Latest
}

update -NoCheckUrl -ChecksumFor 32
