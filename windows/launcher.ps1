$tmp = New-TemporaryFile
$utf8file= New-TemporaryFile
Get-Clipboard | Add-Content -Path $tmp
Get-Content $tmp.FullName | Out-File -Encoding UTF8 $utf8file
Start "C:\Program Files\Typora\Typora.exe" $utf8file.FullName -Wait -PassThru
$utf8FilePath = $utf8file.FullName 
Get-Content -Encoding UTF8 $utf8FilePath | Set-Clipboard
