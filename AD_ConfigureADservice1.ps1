# Once the AD services are installed using the PS script "AD_InstallADservice.ps1"
# Run this script to configure the Active Directory services

$SERVERNAME = "ADserver1"
$FOREST = "atu.L00179143.ie"
$DNSNAME = $SERVERNAME + "." + $FOREST

# Set the IP address for the DC
Rename-Computer -NewName $SERVERNAME
Get-NetIPAddress
New-NetIPAddress -InterfaceIndex 16 -IPAddress 10.13.10.11 -PrefixLength 24 -DefaultGateway 10.13.10.20
Restart-Computer

# Configure AD, DNS
Install-ADDSForest -DomainName $FOREST
Install-WindowsFeature DHCP -IncludeManagementTools

# Configure DHCP, add a single scope
Add-DhcpServerInDC -DnsName $DNSNAME -IPAddress 10.13.10.11
Add-DhcpServerv4Scope -Name InfraServers -StartRange 10.13.10.101 -EndRange 10.13.10.200 -SubnetMask 255.255.255.0

# Set time to sync'h with a local NTP server.
w32tm /config /manualpeerlist:10.13.10.254 /syncfromflags:manual /update

