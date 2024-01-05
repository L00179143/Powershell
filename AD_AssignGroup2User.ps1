New-ADGroup -Name "Sales" -SamAccountName "Sales" -GroupScope Global -
GroupCategory Security

Add-ADGroupMember -Identity Sales -Members sudharsan.vishvanath

if (Get-ADUser -F {SamAccountName -eq $Username})
{
        #If user does exist, output a warning message
        Write-Warning "A user account $Username has already exist in Active Directory."
}
