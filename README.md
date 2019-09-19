Too Much Information in Security
================================
Curated lists of websites related to various categories useful for doing domain research, malware/IOC research, NSM testing like PCAPs, what sites you can perform live analysis/sandbox testing from, and other more specific descriptions as follow: 

#### [Reputation Searching](Reputation-Searches)
Sites containing information on whether or not one of the following data types has a reputation, meaning they are defined as malicious, xyz APT, or has data you could use to determine for yourself on whether or not it is malicious or related to something (ie: already existing sandbox report on a file).
- [IP](Reputation-Searches/IP.md)
- [Domain](Reputation-Searches/Domain.md)
- [SSL Certificates](Reputation-Searches/SSL-Certs.md)
- [Email Address](Reputation-Searches/Email-Senders.md)
- [Registrants for Domain](Reputation-Searches/Registrants.md)
- [Hashes such as File, SSL, JA3, etc...](Reputation-Searches/Hashes.md)

#### [Domain Information Non Reputation](NonReputation-Domain)
Information related to a domain that is irregardless of its "reputation" of being malware or other category.. Such as Whois information or PassiveDNS information, or list of gTLD (top level domains like .pink or .university).
- [TLD Information](NonReputation-Domain/tld-or-gtld-and_or-other_level_domain_subsidy-.md)
- [Whois and Passive DNS](NonReputation-Domain/WHOIS-and-PDNS.md)
- [Curated List of Dynamic DNS Domains](https://gist.github.com/neu5ron/8dd695d4cb26b6dcd997)
- [Dynamic DNS Providers](https://gist.github.com/neu5ron/860c158180e01b61a524)

#### [Live Analysis](LiveAnalysis)
Sites that allow you to submit Files, URLs, Domains, or IPs for simulated/live analysis (ie: sandbox).
- [File](LiveAnalysis/File.md)
- [URL, Domain, or IP](LiveAnalysis/URL-and-Domain.md)

#### [Datasets](Datasets)
Log records and PCAPs to be used for analysis tests, database/siem/logging testing, machine learning testing, parsing samples, NSM/IDS/application testing.
 - [Log Records/Samples](Datasets/Log_Records.md) aide in testing analytics, parsers, databases, SIEM, logging solution, etc...
 - [PCAPs](Datasets/PCAPs.md) useful for testing a protocol parser, additional source of malware samples, testing your IDS, IPS, or NSM application/appliance
 
#### [ETC](ETC)
Curated list of websites for things like:
 - [Website categorization](ETC/WebsiteCategorization.md) ie: determine if it is a shopping, technology, adult, cloud storage, or other categorized site. Similar to categories defined by a web proxy.
 - Repos of [malware and or malware source code.](ETC/Malware-Repos.md)
 - Sites that have [historical internet scan information ](ETC/InternetScans.md) (ie: like Shodan).
 - Information on [JA3 hashes and JA3s hashes](ETC/JA3-and-JA3s-hashes.md).
 - Some [sites or tools for OSINT](ETC/OSINT.md)
 - [Various tools](ETC/Tools.md) that would aide in anything else in this repo. like a tool for scraping a site, or a tool for doing your own domain collection, etc... However, this is probably updated list of any others because other people have much better curated lists for this.
 

#### [Downloadable Blocklists](Downloadable-Blocklists)
Sites that provide lists of Domains, IPs, URLs, that you can download in bulk/mass for the purpose of blocking or dns sinkhole. Some the lists categorize the data types of whether or not they are malware, advertisements, spam, phishing, and or dynamic dns.
- [Domains](Downloadable-Blocklists/domains.md)
- [IPs](Downloadable-Blocklists/ips.md)
- [URLs](Downloadable-Blocklists/urls.md)
- [Curated List of Dynamic DNS Domains](https://gist.github.com/neu5ron/8dd695d4cb26b6dcd997/archive/a77f7507e86b5c1c886a247de761b38bbf134f43.zip)


### Note
You may notice many repetitive websites as many sites contain information for IPs & Domains & Hashes and a URL consists of a domain/IP, but I wanted to categorize them based on the relation of what you are investigating.

Let me know if I am missing anything or you think things should be re-categorized.