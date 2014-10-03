<#

NAME: Cani_findit.ps1
AUTHOR: gh0stisic (Guillo)
DATE: 10/1/2014

KEYWORDS: windows, PowerShell, file, find, extension, search, directory

COMMENTS: This script allows you to search an entire drive or a specific directory for a file(s) by name or extension.

#>

"`n"
write-Host "---------------------------------------------" -ForegroundColor Blue
$filePath = Read-Host "File Path to Search"
write-Host "---------------------------------------------" -ForegroundColor Yellow
$fileName = Read-Host "File Name to Search"
write-Host "---------------------------------------------" -ForegroundColor Blue
"`n"

Get-ChildItem -Recurse -Force $filePath -ErrorAction SilentlyContinue | Where-Object { ($_.PSIsContainer -eq $false) -and  ( $_.Name -like "*$fileName*") } | Select-Object Name,Directory| Format-Table -AutoSize *

write-Host "---I hope you found what you were looking for.---" -ForegroundColor White

# End Script