$ErrorActionPreference = 'Stop'
import-module chocolatey-au

$download_page_url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/'
$url_part1 = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/'
$url_part2 = '/xampp-windows-x64-'
$url_part3 = '-0-VS16-installer.exe'

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
    $homepage_content -match '8\.0\.\d{1,2}'| Out-Null
    $version = $matches[0]
	$url = $url_part1 + $version + $url_part2 + $version + $url_part3
    

    $Latest = @{ URL = $url; Version = $version }
    return $Latest
}

update
