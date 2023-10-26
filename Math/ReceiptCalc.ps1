

<# 
    @author: Evan B

    Task: Take in 5 items being purchased, subtract a discount from one item
    Calculate Subtotal
    Calculate Sales tax
    Calculate Final total
#>
if {$x=0; $x < 4; $x++} { $x = Read-Host -Prompt "Enter the price of item $x" }
$ItemOne   = Read-Host -Prompt "Enter the price of your first item: "
$formattedOne = "{0:N2}" -f $ItemOne
$ItemTwo   = Read-Host -Prompt "Enter the price of your second item: "
$formattedTwo = "{0:N2}" -f $ItemTwo
$ItemThree = Read-Host -Prompt "Enter the price of your third item: "
$formattedThree = "{0:N2}" -f $ItemThree
$ItemFour  = Read-Host -Prompt "Enter the price of your fourth item: "
$FormattedFour = "{0:N2}" -f $ItemFour
$ItemFive  = Read-Host -Prompt "Enter the price of your fifth item: "
$formattedFive = "{0:N2}" -f $ItemFive

$SubTotal = ([double]$FormattedOne+$FormattedTwo+$FormattedThree+$FormattedFour+$FormattedFive)
$FormattedSubTotal = "{0:N2}" -f $SubTotal
Write-Host "The Subtotal of the 5 items is: $FormattedSubTotal"
$Tax = ([double]$Subtotal*0.13)
$FormattedTax = "{0:N2}" -f $Tax
Write-Host "The Tax of the 5 items are: $FormattedTax"
$Total = ([double]$SubTotal+$Tax)
$FormattedTotal = "{0:N2}" -f $Total
Write-Host "The Final total is: $FormattedTotal"