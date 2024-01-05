# Once an Windows Server is deployed. Active directory services must be installed to make it a domain comtroller.
# Run the below Program to install Active Directory on the newly deployed windows server 2016.


Install-WindowsFeature -name AD-Domain-Services –IncludeManagementTools

Import-Module ADDSDeployment
Install-ADDSForest `
-CreateDnsDelegation:$false `
-DatabasePath "C:\Windows\NTDS" `
-DomainMode "WinThreshold" `
-DomainName "L00179143" `
-DomainNetbiosName "L00179143" `
-ForestMode "WinThreshold" `
-InstallDns:$true `
-LogPath "C:\Windows\NTDS" `
-NoRebootOnCompletion:$false `
-SysvolPath "C:\Windows\SYSVOL" `
-Force:$true

Shutdown /r /t 0