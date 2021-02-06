#http://windows-powershell-scripts.blogspot.com/2009/06/unix-equivalents-in-powershell.html
Get-Content .\test.csv | %{ $_.Split(',')[1]; }
Get-Content .\test.csv | %{ [int]$total+=$_.Split(',')[2]; } ; Write-Host "Total: $total"
Get-Content .\test.csv | %{ $a=$_.Split(','); Write-Host "No of fields in record"$a[0]"="$a.length; }
Get-Content .\test.csv | %{ if ($_.Split(',')[-1] -match "[a-c]") { $_; } }
