Add-DhcpServerv4Scope -name "L00179143" -StartRange 10.13.10.2 -EndRange 10.13.10.254 -SubnetMask 255.255.255.0 -State Active
Add-DhcpServerv4ExclusionRange -ScopeID 10.13.10.0 -StartRange 10.13.10.200 -EndRange 10.13.10.254
Set-DhcpServerv4OptionValue -OptionID 3 -Value 10.13.10.1 -ScopeID 10.13.10.0 -ComputerName dhcp.atu.l00179143.ie

