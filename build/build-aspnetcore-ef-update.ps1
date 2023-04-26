. "./build-aspnetcore-common.ps1"

# Build all solutions
#foreach ($service in $serviceArray) {    
#   Set-Location $service.Path
#   dotnet ef database update
#}

foreach ($service in $MigrationsArray) {    
   Set-Location $service.Path
   dotnet ef database update
}

Set-Location $rootFolder