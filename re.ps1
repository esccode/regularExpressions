#http://windows-powershell-scripts.blogspot.com/2009/06/unix-equivalents-in-powershell.html
Get-Content .\data\test.csv | %{ $_.Split(',')[1]; }
Get-Content .\data\test.csv | %{ [int]$total+=$_.Split(',')[2]; } ; Write-Host "Total: $total"

Write-Host "==========================="
  
Get-Content .\data\test.csv | %{ $a=$_.Split(','); Write-Host "No of fields in record"$a[0]"="$a.length; }
Get-Content .\data\test.csv | %{ if ($_.Split(',')[-1] -match "[a-c]") { $_; } }
# Get-Content .\data\test.csv | Measure-Object -line -word -character
Write-Host "==========================="
Get-Content .\data\test.csv | Select-String "Tony Passaquale"
Measure-Command { Sleep 5 }
Get-Content .\data\test.csv | Select-String "Tony Passaquale" -Context 0,1
Write-Host "==========================="
Get-Content .\data\test.csv | Select-String "y$"