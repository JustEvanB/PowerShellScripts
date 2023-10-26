

<#
    @author: Evan
    date: 2023-09-15
    description: Takes 21 inputs for each weighted class and then calculates the weighted total of it
#>

<# Get Inputs For Each Mark #>
clear
$TestOne = Read-Host -Prompt "Please Enter Your Percent On Test 1: "
clear
$TestTwo = Read-Host -Prompt "Please Enter Your Percent On Test 2: "
clear
$Exam = Read-Host -Prompt "Please Enter Your Percent On Exam: "
clear

for ($x=0; $x -lt 10; $x++) {
    [double]$Quiz = Read-Host "Enter Quiz Grade: "
    if ($Quiz -gt 0) {
        $Quiz1 += $Quiz
    }
}
clear
for ($x=0; $x -lt 8; $x++) {
    [double]$Assignment = Read-Host "Enter Assignment Grade: "
    if ($Assignment -gt 0) {
        $Assignment1 += $Assignment
    }
}
clear

<# Get Averages For Each And Show Average For Each #>

<# Get Average And Display Tests and Exams#>
[double]$BothTestAverage = [double]$TestOne + $TestTwo
[double]$BothTestAverage = [double]$BothTestAverage / 2
$TestsFormatted = "{0:N2}" -f $BothTestAverage
$ExamFormatted = "{0:N2}" -f $Exam
Write-Host "The Tests Average: $TestsFormatted"
Write-Host "The Exams Average: $ExamFormatted"

[double]$TestOneAverage = [double]$TestOne * 0.2
[double]$TestTwoAverage = [double]$TestTwo * 0.2
[double]$ExamAverage = [double]$Exam * 0.3

<# Get Average And Display + Prepare Assignment And Quiz For Overall #>

[double]$QuizAverage = [double]$Quiz1 / 10
$QuizFormatted = "{0:N2}" -f $QuizAverage
Write-Host "The Quizs Average: $QuizFormatted"
[double]$QuizAverage1 = [double]$QuizAverage * 0.1

[double]$AssignmentAverage = [double]$Assignment1 / 8
$AssignmentFormatted = "{0:N2}" -f $AssignmentAverage
Write-Host "The Assignments Average: $AssignmentFormatted"
[double]$AssignmentAverage1 = [double]$AssignmentAverage * 0.2 

[double]$FinalWeight1 = [double]$TestOneAverage + [double]$TestTwoAverage + [double]$ExamAverage + [double]$QuizAverage1 + [double]$AssignmentAverage1
[double]$FinalWeight2 = [double]$FinalWeight1 / 1
[double]$FinalWeightFormatted = "{0:N2}" -f $FinalWeight2

<# Show Weighted Average After The Math #>
Write-Host "Your Average Of The Course Would Be $FinalWeightFormatted"