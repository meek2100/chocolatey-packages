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
    # Load necessary assembly
    Add-Type -AssemblyName "System.Net.Http"

    $download_page_url = 'https://www.tableau.com/support/releases'
    $url_part1 = 'https://downloads.tableau.com/tssoftware/TableauDesktop-64bit-'
    $url_part2 = '.exe'

    # Create HttpClientHandler to manage cookies
    $handler = [System.Net.Http.HttpClientHandler]::new()
    $handler.CookieContainer = [System.Net.CookieContainer]::new()

    # Create HttpClient instance with the handler
    $httpClient = [System.Net.Http.HttpClient]::new($handler)
    $httpClient.DefaultRequestHeaders.Add("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36")
    $httpClient.DefaultRequestHeaders.Add("Accept", "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8")
    $httpClient.DefaultRequestHeaders.Add("Accept-Language", "en-US,en;q=0.5")
    $httpClient.DefaultRequestHeaders.Add("Referer", "https://www.tableau.com/")
    $httpClient.DefaultRequestHeaders.Add("Connection", "keep-alive")
    $httpClient.DefaultRequestHeaders.Add("DNT", "1")

    # Add initial cookies (if needed)
    $cookie = [System.Net.Cookie]::new("test", "value", "/", "tableau.com")
    $handler.CookieContainer.Add($cookie)

    # Download the webpage content
    try {
        $response = $httpClient.GetAsync($download_page_url).Result
        $response.EnsureSuccessStatusCode()
        $homepage_content = $response.Content.ReadAsStringAsync().Result
    } catch {
        Write-Error "Failed to download the page: $_"
        exit
    }

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
