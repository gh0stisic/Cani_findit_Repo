<#
Cani_findit - search for files on a system by providing file path and file name.
Created by gh0stisic on 10/1/14.
Work in progress
#>

"`n"
write-Host "---------------------------------------------" -ForegroundColor Blue
$filePath = Read-Host "File Path to Search"
write-Host "---------------------------------------------" -ForegroundColor Yellow
$fileName = Read-Host "File Name to Search"
write-Host "---------------------------------------------" -ForegroundColor Blue
"`n"

Get-ChildItem -Recurse -Force $filePath -ErrorAction SilentlyContinue | Where-Object { ($_.PSIsContainer -eq $false) -and  ( $_.Name -like "*$fileName*") } | Select-Object Name,Directory| Format-Table -AutoSize *

write-Host "---Thanks for using Cani_findit---" -ForegroundColor Red

# end script