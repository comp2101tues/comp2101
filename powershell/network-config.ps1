get-ciminstance win32_networkadapterconfiguration | where-object ipenabled | select-object Description, Index, IPAddress, IPSubnet, DNSDomain, DNSServerSearchOrder | format-table