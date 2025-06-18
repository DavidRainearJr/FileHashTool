param (
    [Parameter(ValueFromRemainingArguments = $true)]
    [string[]]$InputPaths
)

function Get-HashInfo {
    param (
        [string]$FilePath
    )

    if (Test-Path $FilePath -PathType Leaf) {
        Write-Host "----- $FilePath -----"
        $md5    = Get-FileHash -Algorithm MD5    -Path $FilePath
        $sha1   = Get-FileHash -Algorithm SHA1   -Path $FilePath
        $sha256 = Get-FileHash -Algorithm SHA256 -Path $FilePath
        $sha512 = Get-FileHash -Algorithm SHA512 -Path $FilePath

        Write-Host "MD5:    $($md5.Hash)"
        Write-Host "SHA1:   $($sha1.Hash)"
        Write-Host "SHA256: $($sha256.Hash)"
        Write-Host "SHA512: $($sha512.Hash)"
        Write-Host ""
    }
}

foreach ($path in $InputPaths) {
    if (Test-Path $path) {
        if (Test-Path $path -PathType Leaf) {
            # It's a file
            Get-HashInfo -FilePath $path
        }
        elseif (Test-Path $path -PathType Container) {
            # It's a folder, recursively hash all files inside
            Write-Host "===== Folder: $path ====="
            Get-ChildItem -Path $path -File -Recurse | ForEach-Object {
                Get-HashInfo -FilePath $_.FullName
            }
        }
    } else {
        Write-Warning "Path not found: $path"
    }
}

pause

