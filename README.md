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
git clone https://github.com/suljov/Kali-wsl-update-and-tool-install
```

2. Make it executeable
```
Sudo chmod +x kali-wsl-setup.sh
```

3. Run the script
```
sudo ./kali-wsl-setup.sh
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
1. Winpeas
2. Linpeas
3. LaZagne
4. Snaffler
5. Printspoofer(32 and 64)
6. Some of the DirtyCow exploits
7. Some of the Potato exploits
8. AccessChk
9. ligolo-ng (both proxy and agent for linux and windows)
10. lse (linux smart enumeration)
11. pspy (32 and 64)
12. Sublimetext
13. Terminator
14. Gobuster
15. Feroxbuster
16. dirsearch
17. seclists
18. remmina
19. openjdk-11-jdk
20. neo4j
21. bloodhound
22. gedit
25. autorecon
26. Ghostpack-CompiledBinaries
27. Inveigh
28. Windows-Exploit-Suggester
29. windapsearch
30. Rubeus
31. PrivescCheck
32. mimikatz
33. nc.exe
34. PetitPotam
35. LinEnum
36. linux-exploit-suggester
37. linux-exploit-suggester-2
38. php-reverse-shell
39. tplmap
40. XXEinjector
41. GitDump
43. wwwolf-php-webshell
44. SharpUp
45. Seatbelt
46. impacket
47. BloodHound.py
48. Pimp-my-kali (pimp-my-kali script will be removed after this script has has been run)
49. NoSQLMap
51. xcat
52. sysinternalsuite
53. kerbrute
54. rustscan (2.0.1)
55. subfinder
56. windowsprivchecker.bat
57. xssmap
58. httpx
59. jwt_tool
60. lfimap
61. kali-linux-default
62. kali-linux-headless
63. kali-tools-database
64. kali-tools-information-gathering
65. kali-tools-passwords
66. msfpc
67. assetfinder
68. kali-tools-post-exploitation
69. set
70. kali-tools-top10
71. kali-tools-web

The script downloads and runs the pimp-my-kali script which here is used to update the system further and install/update more essentials tools and dependencies. 
You are free to download the script again and use it to upgrade your system further etc. 



