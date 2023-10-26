$DEBUG_MODE = 0;

$Min = Read-Host "Please Enter The Lottery Minimum Number: "
$Max = Read-Host "Please Enter The Lottery Max Number: "

$Num = @(0,1,2,3,4,5,6)
$Num[1] = Get-Random -Minimum $Min -Maximum $Max
$Num[2] = Get-Random -Minimum $Min -Maximum $Max
$Num[3] = Get-Random -Minimum $Min -Maximum $Max
$Num[4] = Get-Random -Minimum $Min -Maximum $Max
$Num[5] = Get-Random -Minimum $Min -Maximum $Max
$Num[6] = Get-Random -Minimum $Min -Maximum $Max
clear

$Points = 0

if ($DEBUG_MODE -eq 1) {
    Write-Host $Num[1] $Num[2] $Num[3] $Num[4] $Num[5] $Num[6]
}

for ($i=1; $i -le 6; $i++) {
    sleep 1
    clear
    $GuessCount = 0 

    for ($j=1; $j -le 4; $j++) {
        $Guess = Read-Host "Please Enter Your Guess for number $i "
        $GuessCount++
        if ($Guess -eq $Num[$i]) {
            if ($GuessCount -eq 1) {
                Write-Host "Congrats! You got the number correct on attempt #$j!"
                sleep 1;
                $Points += 50
                Break;
                Break;
            }
            if ($GuessCount -eq 2) {
                Write-Host "Congrats! You got the number correct on attempt #$j!"
                sleep 1;
                $Points += 25
                Break;
                Break;
            }
            if ($GuessCount -eq 3) {
                Write-Host "Congrats! You got the number correct on attempt #$j!"
                sleep 1;
                $Points += 10
                Break;
                Break;
            }
            if ($GuessCount -eq 4) {
                Write-Host "Congrats! You got the number correct on attempt #$j!"
                sleep 1;
                $Points += 5
                Break;
                Break;
            }
        }
    }
}

Write-Host "Congrats You Have $Points Points!"