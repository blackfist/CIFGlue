# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


PrivacyTag.where(content:"Red", color:"Red").first_or_create
PrivacyTag.where(content:"Amber", color:"Yellow").first_or_create
PrivacyTag.where(content:"Green", color:"White").first_or_create

Category.where(name:"Malicious host", description:"A system or host used by an attacker to facilitate the attack in some way not more specifically categorized. (allows for accuracy, but not precisio    n").first_or_create
Category.where(name:"Bot", description:"A system infected with malicious software and controlled as a group.").first_or_create
Category.where(name:"Exfiltration Site", description:"A system or site where stolen data is sent after the data was compromised from an organization.").first_or_create
Category.where(name:"C2", description:"Command and control server.  A system used to control bots.").first_or_create
Category.where(name:"Proxy", description:"a system used to shield the attacker's IP address (such as anonymous proxies).").first_or_create
Category.where(name:"Malware Distributor", description:"a system used to distribute malware.  Many exploit servers will redirect a victim system to a malware distributor to download additional malwa    re.").first_or_create
Category.where(name:"Exploit Server", description:"systems that have exercised various exploits against victims using browsers, programs, downloaded files, scripts, or operating system vulnerabiliti    es.").first_or_create

VerisAction.where(name:"Malware: Export data", description:"Export data to another site or system").first_or_create
VerisAction.where(name:"Malware: Packet sniffer", description:"Packet sniffer (capture data from network)").first_or_create
VerisAction.where(name:"Malware: Password dumper", description:"Password dumper (extract credential hashes)").first_or_create
VerisAction.where(name:"Malware: Ram scraper", description:"Ram scraper or memory parser (capture data from volatile memory)").first_or_create
VerisAction.where(name:"Malware: Ransomware", description:"Ransomware (encrypt or seize stored data)").first_or_create
VerisAction.where(name:"Malware: Rootkit", description:"Rootkit (maintain local privileges and stealth)").first_or_create
VerisAction.where(name:"Malware: Scan network", description:"Scan or footprint network").first_or_create
VerisAction.where(name:"Malware: Spam", description:"Send spam").first_or_create
VerisAction.where(name:"Malware: Spyware", description:"Spyware, keylogger or form-grabber (capture user input or activity)").first_or_create
VerisAction.where(name:"Malware: SQL injection", description:"SQL injection attack").first_or_create
VerisAction.where(name:"Malware: Utility", description:"System or network utilities (e.g., PsTools, Netcat)").first_or_create
VerisAction.where(name:"Malware: Worm", description:"Worm (propagate to other systems or devices)").first_or_create
VerisAction.where(name:"Malware: Unknown", description:"Unknown").first_or_create
VerisAction.where(name:"Malware: Other", description:"Other").first_or_create
VerisAction.where(name:"Hacking: Abuse of functionality", description:"Abuse of functionality").first_or_create
VerisAction.where(name:"Hacking: Brute force", description:"Brute force or password guessing attacks").first_or_create
VerisAction.where(name:"Hacking: Buffer overflow", description:"Buffer overflow").first_or_create
VerisAction.where(name:"Hacking: Cache poisoning", description:"Cache poisoning").first_or_create
VerisAction.where(name:"Hacking: Session prediction", description:"Credential or session prediction").first_or_create
VerisAction.where(name:"Hacking: CSRF", description:"Cross-site request forgery").first_or_create
VerisAction.where(name:"Hacking: XSS", description:"Cross-site scripting").first_or_create
VerisAction.where(name:"Hacking: Cryptanalysis", description:"Cryptanalysis").first_or_create
VerisAction.where(name:"Hacking: DoS", description:"Denial of service").first_or_create
VerisAction.where(name:"Hacking: Footprinting", description:"Footprinting and fingerprinting").first_or_create
VerisAction.where(name:"Hacking: Forced browsing", description:"Forced browsing or predictable resource location").first_or_create
VerisAction.where(name:"Hacking: Format string attack", description:"Format string attack").first_or_create
VerisAction.where(name:"Hacking: Fuzz testing", description:"Fuzz testing").first_or_create
VerisAction.where(name:"Hacking: HTTP request smuggling", description:"HTTP request smuggling").first_or_create
VerisAction.where(name:"Hacking: HTTP request splitting", description:"HTTP request splitting").first_or_create
VerisAction.where(name:"Hacking: HTTP response smuggling", description:"HTTP response smuggling").first_or_create
VerisAction.where(name:"Hacking: HTTP Response Splitting", description:"HTTP Response Splitting").first_or_create
VerisAction.where(name:"Hacking: Integer overflows", description:"Integer overflows").first_or_create
VerisAction.where(name:"Hacking: LDAP injection", description:"LDAP injection").first_or_create
VerisAction.where(name:"Hacking: Mail command injection", description:"Mail command injection").first_or_create
VerisAction.where(name:"Hacking: MitM", description:"Man-in-the-middle attack").first_or_create
VerisAction.where(name:"Hacking: Null byte injection", description:"Null byte injection").first_or_create
VerisAction.where(name:"Hacking: Offline cracking", description:"Offline password or key cracking (e.g., rainbow tables, Hashcat, JtR)").first_or_create
VerisAction.where(name:"Hacking: OS commanding", description:"OS commanding").first_or_create
VerisAction.where(name:"Hacking: Path traversal", description:"Path traversal").first_or_create
VerisAction.where(name:"Hacking: RFI", description:"Remote file inclusion").first_or_create
VerisAction.where(name:"Hacking: Reverse engineering", description:"Reverse engineering").first_or_create
VerisAction.where(name:"Hacking: Routing detour", description:"Routing detour").first_or_create
VerisAction.where(name:"Hacking: Session fixation", description:"Session fixation").first_or_create
VerisAction.where(name:"Hacking: Session replay", description:"Session replay").first_or_create
VerisAction.where(name:"Hacking: Soap array abuse", description:"Soap array abuse").first_or_create
VerisAction.where(name:"Hacking: Special element injection", description:"Special element injection").first_or_create
VerisAction.where(name:"Hacking: SQLi", description:"SQL injection").first_or_create
VerisAction.where(name:"Hacking: SSI injection", description:"SSI injection").first_or_create
VerisAction.where(name:"Hacking: URL redirector abuse", description:"URL redirector abuse").first_or_create
VerisAction.where(name:"Hacking: Backdoor or C2", description:"Use of Backdoor or C2 channel").first_or_create
VerisAction.where(name:"Hacking: Stolen creds", description:"Use of stolen authentication credentials").first_or_create
VerisAction.where(name:"Hacking: XML attribute blowup", description:"XML attribute blowup").first_or_create
VerisAction.where(name:"Hacking: XML entity expansion", description:"XML entity expansion").first_or_create
VerisAction.where(name:"Hacking: XML external entities", description:"XML external entities").first_or_create
VerisAction.where(name:"Hacking: XML injection", description:"XML injection").first_or_create
VerisAction.where(name:"Hacking: XPath injection", description:"XPath injection").first_or_create
VerisAction.where(name:"Hacking: XQuery injection", description:"XQuery injection").first_or_create
VerisAction.where(name:"Hacking: Unknown", description:"Unknown").first_or_create
VerisAction.where(name:"Hacking: Other", description:"Other").first_or_create
VerisAction.where(name:"Social: Scam", description:"Online scam or hoax (e.g., scareware, 419 scam, auction fraud)").first_or_create
VerisAction.where(name:"Social: Phishing", description:"Phishing (or any type of *ishing)").first_or_create
VerisAction.where(name:"Social: Pretexting", description:"Pretexting (dialogue leveraging invented scenario)").first_or_create
VerisAction.where(name:"Social: Spam", description:"Spam (unsolicited or undesired email and advertisements)").first_or_create
VerisAction.where(name:"Social: Unknown", description:"Unknown").first_or_create
VerisAction.where(name:"Social: Other", description:"Other").first_or_create
