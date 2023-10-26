
[int]$Row = Read-Host -Prompt "Enter the row you want: "
$BPrice = 20;
$Price = 0;

switch ($Row) {
    {$Row -eq 0} { $Price = ($BPrice*2.2); Break}
    {$Row -le 5} { $Price = ($BPrice*1.9); Break}
    {$Row -le 10} { $Price = ($BPrice*1.6); Break}
    {$Row -le 15} { $Price = ($BPrice*1.3); Break}
    {$Row -le 20} { $Price = ($BPrice*1); Break}
}

Write-Host "The Price of Row $Row Would Be: $Price"