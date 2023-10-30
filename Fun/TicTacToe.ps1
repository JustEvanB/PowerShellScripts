
$tiktac_board = @(
    @(' ', ' ', ' '),
    @(' ', ' ', ' '),
    @(' ', ' ', ' ')

)


function win_check ($tiktac_board) {
    # check for a win
    # check rows
    for ($i = 0; $i -lt 3; $i++) {
        if ($tiktac_board[$i][0] -eq $tiktac_board[$i][1] -and $tiktac_board[$i][1] -eq $tiktac_board[$i][2] -and $tiktac_board[$i][0] -ne ' ') {
            $Win = 'True'
            return $Win
        }
    }
    # check columns
    for ($i = 0; $i -lt 3; $i++) {
        if ($tiktac_board[0][$i] -eq $tiktac_board[1][$i] -and $tiktac_board[1][$i] -eq $tiktac_board[2][$i] -and $tiktac_board[0][$i] -ne ' ') {
            $Win = 'True'
            return $Win
        }
    }
    # check diagonals
    if ($tiktac_board[0][0] -eq $tiktac_board[1][1] -and $tiktac_board[1][1] -eq $tiktac_board[2][2] -and $tiktac_board[0][0] -ne ' ') {
        $Win = 'True'
        return $Win
    }
    if ($tiktac_board[0][2] -eq $tiktac_board[1][1] -and $tiktac_board[1][1] -eq $tiktac_board[2][0] -and $tiktac_board[0][2] -ne ' ') {
        $Win = 'True'
        return $Win
    }
    return $false
    
}

function turn ($tiktac_board, $player) {
    Write-Host -f Yellow "Player $player's turn"
}


function print_board ($tiktac_board) {
    $a1 = $tiktac_board[0][0]
    $a2 = $tiktac_board[0][1]
    $a3 = $tiktac_board[0][2]
    $b1 = $tiktac_board[1][0]
    $b2 = $tiktac_board[1][1]
    $b3 = $tiktac_board[1][2]
    $c1 = $tiktac_board[2][0]
    $c2 = $tiktac_board[2][1]
    $c3 = $tiktac_board[2][2]
    Write-Host "
       0     1     2
    |     |     |     
    0  $a1  |  $b1  |  $c1  
    |_____|_____|_____
    |     |     |
    1  $a2  |  $b2  |  $c2  
    |_____|_____|_____
    |     |     |     
    2  $a3  |  $b3  |  $c3  
    |     |     |     
"
}

$Game = $true
while ($Game) {

    $turn = 'X'
    while ($turn -eq 'X') {
        clear
        print_board($tiktac_board)
        Write-Host "$turn Players Turn: "
        [int]$Column = Read-Host "Enter Column (0,1,2): "
        [int]$Row = Read-Host "Enter Row (0,1,2): "
        if ($tiktac_board[$Column][$Row] -ne ' ') {
            Write-Host "Spot already played"
            Start-Sleep -Seconds 3
        }
        else {
            $tiktac_board[$Column][$Row] = 'X'
            $check = win_check($tiktac_board)

            if ($check -eq $true) {
                clear
                print_board($tiktac_board)
                Write-Host ("X Wins!")
                exit;
            }
            $turn = 'O'
        }
    }

    clear
    print_board($tiktac_board)

    while ($turn -eq 'O') {
        clear
        print_board($tiktac_board)
        Write-Host "$turn Players Turn: "
        [int]$Column = Read-Host "Enter Column (0,1,2): "
        [int]$Row = Read-Host "Enter Row (0,1,2): "
        if ($tiktac_board[$Column][$Row] -ne ' ') {
            Write-Host "Spot already played"
            Start-Sleep -Seconds 3
            
        }
        else {
            $tiktac_board[$Column][$Row] = 'O'
            $check = win_check($tiktac_board)

            if ($check -eq $true) {
                clear
                print_board($tiktac_board)
                Write-Host ("O Wins!")
                exit;
            }
            $turn = 0
        }
    }
}



