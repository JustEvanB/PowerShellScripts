
function Main {

    <# Get Inputs #>

    $consultantName = Read-Host -Prompt "Please enter Consultants Name: "
    $hourlyRate = Read-Host -Prompt "Please enter the Hourly Rate: "
    $hoursWorked = Read-Host -Prompt "Please enter Hours Worked: "
    $clientName = Read-Host -Prompt "Please enter the Client's Name"
    
    <# Do Maths #>
    $subtotal = [double]$hourlyRate * [double]$hoursWorked
    $subtotal = "{0:N2}" -f $subtotal
    $HST = [double]$subtotal * 0.13
    $HST = "{0:N2}" -f $HST
    $total = [double]$subtotal + [double]$HST
    $total = "{0:N2}" -f $total

    <# Getting Line Length to setup for loops #>
    [double]$clientLength = 40 - 5 - [double]$clientName.Length
    [double]$consultantLength = 40 - 17 - [double]$consultantName.Length
    [double]$hoursWorkedLength = 40 - 19 - [double]$hoursWorked.Length
    [double]$subtotalLength = 40 - 15 - ($subtotal).tostring().length
    [double]$HSTLength = 40 - 10 - ($HST).tostring().length
    [double]$totalLength = 40 - 12 - ($total).tostring().length

    <# Output to table with loops (please never make me do this again)#>
    Write-Host "------------------------------------------"
    Write-Host -NoNewline "|    $clientName"
    for ($i=0; $i -le $clientLength; $i++) {
        Write-Host -NoNewline " "
        if ($i -eq $ClientLength) {
            Write-Host -NoNewline "|"
        }
    }

    Write-Host -NoNewline "`n|    Consultant: $consultantName"
    for ($i=0; $i -le $consultantLength; $i++) {
        Write-Host -NoNewline " "
        if ($i -eq $ConsultantLength) {
            Write-Host -NoNewline "|"
        }
    }
    
    Write-Host -NoNewline "`n|    Hours Worked: $hoursWorked"
    for ($i=0; $i -le $hoursWorkedLength; $i++) {
        Write-Host -NoNewline " "
        if ($i -eq $hoursWorkedLength) {
            Write-Host -NoNewline "|"
        }
    }

    Write-Host -NoNewline "`n|    Subtotal: $subtotal"
    for ($i=0; $i -le $subtotalLength; $i++) {
        Write-Host -NoNewline " "
        if ($i -eq $subtotalLength) {
            Write-Host -NoNewline "|"
        }
    }

    Write-Host -NoNewline "`n|    HST: $HST"
    for ($i=0; $i -le $HSTLength; $i++) {
        Write-Host -NoNewline " "
        if ($i -eq $HSTLength) {
            Write-Host -NoNewline "|"
        }
    }

    Write-Host -NoNewline "`n|    Total: $total"
    for ($i=0; $i -le $totalLength; $i++) {
        Write-Host -NoNewline " "
        if ($i -eq $totalLength) {
            Write-Host -NoNewline "|"
        }
    }

    Write-Host "`n------------------------------------------"

}


<# MAIN #>
for ($i=0; $i -lt 10; $i++) {
    Main
}
