# network forensics


## Simple+Data+Exfiltration+Detection.pcap

```
tshark -r pcap/Simple+Data+Exfiltration+Detection.pcap -Y "dns" -T fields -e dns.qry.name | grep yeu | awk -F. '{print $1}' | base64 -d
```

## http.pcapng

```
tshark -r pcap/http.pcapng -Y 'http.request' -T fields -e http.host -e http.request.uri -e http.user_agent -e http.referer -e http.cookie -e http.authorization -E separator=, -E quote=d

```

## Vec primerov zajetega prometa

https://wiki.wireshark.org/samplecaptures