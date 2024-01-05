

New-ADUser -Name "Sudharsan Vishvanath" -GivenName "Sudharsan" -Surname "Vishvanath" 
-SamAccountName "S.Vishvanath" -UserPrincipalName "S.vishvanath@L00179143.com" 
-Path "OU=Sales,DC=L00179143,DC=com" 
-AccountPassword(Read-Host -AsSecureString "Input Password") -Enabled $true


New-ADUser -Name "Swathi Vasudevan" -GivenName "Swathi" -Surname "Vasudevan" 
-SamAccountName "S.Vasudevan" -UserPrincipalName "S.vasudevan@L00179143.com" 
-Path "OU=Sales,DC=L00179143,DC=com" 
-AccountPassword(Read-Host -AsSecureString "Input Password") -Enabled $true

