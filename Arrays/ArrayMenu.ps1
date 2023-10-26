

$TVShows = [System.Collections.Generic.List[string]]::new()
$loop = 1

while ($loop -eq 1) {
    clear
    Write-Host "################"
    Write-Host "#  Array Menu  #"
    Write-Host "################"
    
    Write-Host "`n Current Array is: $TVShows"

    Write-Host "`n1. Add To Array"
    Write-Host "2. Remove From Array"
    Write-Host "exit. Quit Program"
    $input = Read-Host "`nEnter Choice: "

    if ($input -eq 1) {
        $loop = 2
    }
    if ($input -eq 2) {
        $loop = 3
    }
    if ($input -eq "exit") {
        clear
        exit
    } 

    while ($loop -eq 2) {
        clear
        Write-Host "################"
        Write-Host "#  Array Menu  #"
        Write-Host "################"

        Write-Host -NoNewline "Current Array: "
        Write-Host $TVShows

        $Array = Read-Host "Enter The New TV Name: "
        $TVShows.Add($Array)
        $loop = 1;
    }

    while ($loop -eq 3) {
        clear
        Write-Host "################"
        Write-Host "#  Array Menu  #"
        Write-Host "################"

        Write-Host -NoNewline "Current Array: "
        Write-Host $TVShows

        $Array = Read-Host "Enter The Name of Array To Delete: "
        $TVShows.Remove($Array)
        $loop = 1
    }

}
