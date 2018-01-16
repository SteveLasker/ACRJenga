$StartTime = $(get-date)
Write-Output "Pull microsoft/aspnetcore:2.0-nanoserver-1709: $StartTime"
docker pull microsoft/aspnetcore:2.0-nanoserver-1709
$elapsedTime = $(get-date) - $StartTime
$totalTime = "{0:HH:mm:ss}" -f ([datetime]$elapsedTime.Ticks)
Write-Output $totalTime

$StartTime = $(get-date)
Write-Output "Pull microsoft/aspnetcore-build:2.0-nanoserver-1709: $StartTime"
docker pull microsoft/aspnetcore-build:2.0-nanoserver-1709
$elapsedTime = $(get-date) - $StartTime
$totalTime = "{0:HH:mm:ss}" -f ([datetime]$elapsedTime.Ticks)
Write-Output $totalTime

$StartTime = $(get-date)
Write-Output "Build ASP.net Core-1709: $StartTime"
docker build . -f .\AspNetCore\Dockerfile -t acr-jenga/aspnetcore:2.0-nanoserver-1709
$elapsedTime = $(get-date) - $StartTime
$totalTime = "{0:HH:mm:ss}" -f ([datetime]$elapsedTime.Ticks)
Write-Output $totalTime
