

<#
    @author: Evan
    date: 2023-09-25
    description: Menu with 10 options of conversions of imperial to metric
#>

<# Reduce redundancy #>
function MainMenu {
    clear
    Write-Host "###########################################"
    Write-Host "#                CONVERTER                #"
    Write-Host "###########################################"
    Write-Host ""
}

function Choices {
    Write-Host "1. Inch -> Centimeter
2. Inch -> Milimeter
3. Inch -> Meter
4. Kilogram -> Pound
5. Square Mile -> Square Kilometer
6. Square Inch -> Square Meter
7. Foot -> Meter
8. Mile -> Kilometer
9. Farenheit -> Celcius
10. Ton -> Pound
99. Exit Program
"
}

$loop = 0
$input = 0
while ($loop -eq 0) {
    <# Main Menu Loop #>
    
    MainMenu
    Choices

    $input = Read-Host -Prompt "PS C:\Input\ "

    if ($input -eq 1) {
        $loop = 1
    }
    if ($input -eq 2) {
        $loop = 2
    }
    if ($input -eq 3) {
        $loop = 3
    }
    if ($input -eq 4) {
        $loop = 4
    }
    if ($input -eq 5) {
        $loop = 5
    }
    if ($input -eq 6) {
        $loop = 6
    }
    if ($input -eq 7) {
        $loop = 7
    }
    if ($input -eq 8) {
        $loop = 8
    }
    if ($input -eq 9) {
        $loop = 9
    }
    if ($input -eq 10) {
        $loop = 10
    }

    <# Inch -> CM #>
    while ($loop -eq 1) {
        MainMenu
        
        $Inch2CM = Read-Host -Prompt "Enter Inches: "

        <# Convert #>
        $Inch2CM = [double]$Inch2CM * 2.54
        $Inch2CM = "{0:N2}" -f $Inch2CM

        Write-Host ""
        Write-Host "That is equivelant to $Inch2CM Centimeters" -foregroundColor Cyan
        sleep 3
        $loop = 0
    }

    <# Inch -> MM #>
    while ($loop -eq 2) {
        
        MainMenu
        
        $Inch2MM = Read-Host -Prompt "Enter Inches: "

        <# Convert #>
        $Inch2MM = [double]$Inch2MM * 25.4
        $Inch2MM = "{0:N2}" -f $Inch2MM

        Write-Host ""
        Write-Host "That is equivelant to $Inch2MM Milimeters" -foregroundColor Cyan
        sleep 3
        $loop = 0
    }

    <# Inch -> M #>
    while ($loop -eq 3) {
        
        MainMenu

        $Inch2M = Read-Host -Prompt "Enter Inches: "

        <# Convert #>
        $Inch2M = [double]$Inch2M / 39.37
        $Inch2M = "{0:N2}" -f $Inch2M

        Write-Host ""
        Write-Host "That is equivelant to $Inch2M Meters" -foregroundColor Cyan
        sleep 3
        $loop = 0
    }

    <# Kg to lb #>
    while ($loop -eq 4) {
        
        MainMenu

        $Kg2lbs = Read-Host -Prompt "Enter Kilograms: "

        <# Convert #>
        $Kg2lbs = [double]$Kg2lbs * 2.20462
        $Kg2lbs = "{0:N2}" -f $Kg2lbs

        Write-Host ""
        Write-Host "That is equivelant to $Kg2lbs Pounds" -foregroundColor Cyan
        sleep 3
        $loop = 0
    }

    <# Sq Miles -> Sq KM #>
    while ($loop -eq 5) {
        
        MainMenu

        $SM2SK = Read-Host -Prompt "Enter Square Miles: "

        <# Convert #>
        $SM2SK = [double]$SM2SK
        $SM2SK = "{0:N2}" -f $SM2SK

        Write-Host ""
        Write-Host "That is equivelant to $SM2SK Square Kilometers" -foregroundColor Cyan
        sleep 3
        $loop = 0
    }

    <# Square Inch -> Square Meter #>
    while ($loop -eq 6) {
        
        MainMenu

        $SI2SM = Read-Host -Prompt "Enter Square Inches: "

        <# Convert #>
        $SI2SM = [double]$SI2SM / 1550
        $SI2SM = "{0:N2}" -f $SI2SM

        Write-Host ""
        Write-Host "That is equivelant to $SI2SM Square Meters" -foregroundColor Cyan
        sleep 3
        $loop = 0
    }

    <# Foot -> Meter #>
    while ($loop -eq 7) {
        
        MainMenu

        $F2M = Read-Host -Prompt "Enter Feet: "

        <# Convert #>
        $F2M = [double]$F2M / 3.281
        $F2M = "{0:N2}" -f $F2M

        Write-Host ""
        Write-Host "That is equivelant to $F2M Pounds" -foregroundColor Cyan
        sleep 3
        $loop = 0
    }

    <# Mile -> KM #>
    while ($loop -eq 8) {
        
        MainMenu

        $M2K = Read-Host -Prompt "Enter Kilograms: "

        <# Convert #>
        $M2K = [double]$M2K * 1.609
        $M2K = "{0:N2}" -f $M2K

        Write-Host ""
        Write-Host "That is equivelant to $M2K Pounds" -foregroundColor Cyan
        sleep 3
        $loop = 0
    }

    <# F -> C #>
    while ($loop -eq 9) {
        
        MainMenu

        $F2C = Read-Host -Prompt "Enter Farenheit: "

        <# Convert #>
        $F2C = ([double]$F2C-32) * 5/9
        $F2C = "{0:N2}" -f $F2C

        Write-Host ""
        Write-Host "That is equivelant to $F2C Celcius" -foregroundColor Cyan
        sleep 3
        $loop = 0
    }

    <# Ton -> lbs #>
    while ($loop -eq 10) {
        
        MainMenu

        $T2lbs = Read-Host -Prompt "Enter Tons: "

        <# Convert #>
        $T2lbs = [double]$T2lbs * 2000
        $T2lbs = "{0:N2}" -f $T2lbs

        Write-Host ""
        Write-Host "That is equivelant to $T2lbs Pounds" -foregroundColor Cyan
        sleep 3
        $loop = 0
    }

    <# EXIT PROGRAM #>
    if ($input -eq 99) {
        clear
        Write-Host "Goodbye" -foregroundColor Red
        $loop = 99
        exit 1
    }
}