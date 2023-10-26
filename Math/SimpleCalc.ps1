$loop=1

while($loop -eq 1) {
	clear
	Write-Host "###########################"
	Write-Host "	Math Stuff   "
	Write-Host "###########################"
	Write-Host ""
	Write-Host "1. Addition"
	Write-Host "2. Subtraction"
	Write-Host "3. Division"
	Write-Host "4. Mulitplcation"
	Write-Host "exit. Leave Program"
	$Input = Read-Host -Prompt "Enter Your Choice"

	if ($input -eq 1) {
		$loop=2
	}
	if ($input -eq 2) {
		$loop=3
	}
	if ($input -eq 3) {
		$loop=4
	}
	if ($input -eq 4) {
		$loop=5
	}
	if ($input -eq 99) {
		$loop = 99
	}

	while($loop -eq 2) {
		$x = Read-Host -Prompt "Enter Your First Variable"
		$y = Read-Host -Prompt "Enter Your Second Variable"

		$z = [double]$x + [double]$y
		Write-Host "The Addition is $z"
		Start-Sleep -Milliseconds 5000
		$loop=1	
	}

	while ($loop -eq 3) {
		$x = Read-Host -Prompt "Enter Your First Variable"
		$y = Read-Host -Prompt "Enter Your Second Variable"

		$z = [double]$x - [double]$y
		Write-Host "The Subtraction is $z"
		Start-Sleep -Milliseconds 5000
		$loop=1
	}

	while ($loop -eq 4) {
		$x = Read-Host -Prompt "Enter Your First Variable"
		$y = Read-Host -Prompt "Enter Your Second Variable"

		$z = [double]$x / [double]$y
		Write-Host "The Division is $z"
		Start-Sleep -Milliseconds 5000
		$loop = 1
	}

	while ($loop -eq 5) {
		$x = Read-Host -Prompt "Enter Your First Variable"
		$y = Read-Host -Prompt "Enter Your Second Variable"

		$z = [double]$x * [double]$y
		Write-Host "The Mulitplcation is $z"
		Start-Sleep -Milliseconds 5000
		$loop = 1
	}
}
