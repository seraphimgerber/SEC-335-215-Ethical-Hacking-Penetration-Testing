param($NetPrefix, $DnsServer)

1..254 | ForEach-Object { Resolve-DnsName -Name "$NetPrefix.$_" -Server $DnsServer -ErrorAction Ignore }
