appcmd stop apppool /apppool.name:devx
pushd \\mac\code
cake
rmdir /s /q "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Temporary ASP.NET Files\devx" 
appcmd start apppool /apppool.name:devx