

[double]$income = Read-Host -Prompt "Enter Your Income: "
$taxes=0;
$pTax=0;

switch ($income) {
    {$income -gt 235675} { $taxes +=($income-235675)*0.0368}
    {$income -gt 165430} { $taxes +=($income-165430)*0.0332}
    {$income -gt 106717} { $taxes +=($income-106717)*0.055}
    {$income -gt 53359} { $taxes +=($income-53359)*0.055}
    {$income -gt 0} { $taxes +=($income-0)*0.015}
}

Write-Host "Taxes: "$taxes

switch ($income) {
    {$income -gt 220000} { $pTax +=($income-220000)*0.01}
    {$income -gt 150000} { $pTax +=($income-150000)*0.01}
    {$income -gt 98463} { $pTax +=($income-98463)*0.0201}
    {$income -gt 49231} { $pTax +=($income-49231)*0.041}
    {$income -gt 0} { $pTax +=($income-0)*0.0505}
}

Write-Host "Ontario Taxes: "$pTax