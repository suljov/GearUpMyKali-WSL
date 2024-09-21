# WSL Kali linux system update and tool install script. 

* This project/script is re-made from my Kali update and tool install script: [https://github.com/suljov/Kali-update-and-tool-install] 
* This script i made is for making the installation of a new WSL Kali Linux more automatic and easier. 
* The script will update and upgrade the system, install the basic and essential tools (atleast those that i use etc)
* This script is easy to use and easy to modify for your own needs etc. 
* Of course you are free to use and modify as you like. 





# How to use
## Run the script locally

1. Download the script
```
git clone https://github.com/suljov/Kali-update-and-tool-install
```
2. Move the script
```
mv Kali-wsl-update-and-tool-install/kali-wsl-setup.sh .
```
3. Make it executeable
```
chmod +x kali-setup.sh
```

4. Run the script
```
./kali-setup.sh
```

## Run the script using Curl
```
sudo curl https://raw.githubusercontent.com/suljov/Kali-wsl-update-and-tool-install/main/kali-wsl-setup.sh | bash
```


## Folder permission problem
If error with permissions on the folder "tools", use chown to make your user the owner (this is done in the script but may cause problem) 
```
chown -R <user>:<user> tools
```



# Tools
Over the tools that is already installed on Kali Linux the script will install the following tools:

* Winpeas
* Linpeas
* LaZagne
* Snaffler
* Printspoofer (32 and 64)
* Some of the DirtyCow exploits
* Some of the Potato exploits
* AccessChk
* ligolo-ng (both proxy and agent for Linux and Windows)
* lse (Linux smart enumeration)
* pspy (32 and 64)
* Gobuster
* Feroxbuster
* dirsearch
* seclists
* openjdk-11-jdk
* neo4j
* bloodhound
* Ghostpack-CompiledBinaries
* Inveigh
* Windows-Exploit-Suggester
* windapsearch
* Rubeus
* PrivescCheck
* mimikatz
* nc.exe
* PetitPotam
* LinEnum
* linux-exploit-suggester
* linux-exploit-suggester-2
* php-reverse-shell
* tplmap
* XXEinjector
* git-dumper
* wwwolf-php-webshell
* SharpUp
* Seatbelt
* impacket
* BloodHound.py
* NoSQLMap
* xcat
* sysinternalsuite
* kerbrute
* rustscan (2.0.1)
* subfinder
* windowsprivchecker
* linuxprivchecker
* xssmap
* httpx
* jwt_tool
* lfimap
* kali-linux-everything
* msfpc
* assetfinder
* set
* nmap
* nikto
* enum4linux-ng
* commix
* httprobe
* p0wny-shell
* csrf-poc-generator
* trufflehog
* remmina
* GLPIScan
* cvemap (API key needed to be setup up by user)
* Sliver (C2)
* Wfuzz
* ntlm_theft
* krbrelayx
* bloodyAD
* FullPowers
* RunasCs
* Nuclei
* Kiterunner
* username-anarchy
* cupp
* powersploit (powerview, powerup etc)
* SharpCollection
* Donut
* Godpotato
* PrecompiledBinaries
* apachetomcatscanner
* reconrunner (by me)
* Pentest-Cheatsheets (Tib3rius)
* Additional wordlists
* CVE-2023-2255 (ODT file exploit)


The script downloads and runs the pimp-my-kali script which here is used to update the system further and install/update more essentials tools and dependencies. 
You are free to download the script again and use it to upgrade your system further etc. 



