
<#
    @author: Evan
    date: 2023-09-13
    description: Takes a #
#>

$x = Read-Host -Prompt "Please enter a number: "
Write-Host $x+4
Write-Host ($x+4)
Write-Host ([int]$x+4)
Write-Host ("Answer: "+[int]$x+4)

$y = Write-Host ([int]$x+4)
Write-Host $y