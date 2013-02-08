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

VerisAction.where(name:"Malware: Adware", description:"Adware").first_or_create
VerisAction.where(name:"Malware: Backdoor", description:"Enable Remote Access").first_or_create
VerisAction.where(name:"Malware: Brute force", description:"Brute Force Attack").first_or_create
VerisAction.where(name:"Malware: Capture app data", description:"Capture data from application or system process").first_or_create
VerisAction.where(name:"Malware: Capture stored data", description:"Capture data stored on system disk").first_or_create
VerisAction.where(name:"Malware: Client-side", description:"Client-side or browser attack (e.g., redirection, XSS, MitB)").first_or_create
VerisAction.where(name:"Malware: C2", description:"Command and control (C2)").first_or_create
VerisAction.where(name:"Malware: Destroy data", description:"Destroy or corrupt stored data").first_or_create
