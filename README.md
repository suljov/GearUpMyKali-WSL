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

1. Winpeas
2. Linpeas
3. LaZagne
4. Snaffler
5. Printspoofer (32 and 64)
6. Some of the DirtyCow exploits
7. Some of the Potato exploits
8. AccessChk
9. ligolo-ng (both proxy and agent for Linux and Windows)
10. lse (Linux smart enumeration)
11. pspy (32 and 64)
12. Gobuster
13. Feroxbuster
14. dirsearch
15. seclists
16. openjdk-11-jdk
17. neo4j
18. bloodhound
19. autorecon
20. Ghostpack-CompiledBinaries
21. Inveigh
22. Windows-Exploit-Suggester
23. windapsearch
24. Rubeus
25. PrivescCheck
26. mimikatz
27. nc.exe
28. PetitPotam
29. LinEnum
30. linux-exploit-suggester
31. linux-exploit-suggester-2
32. php-reverse-shell
33. tplmap
34. XXEinjector
35. git-dumper
36. wwwolf-php-webshell
37. SharpUp
38. Seatbelt
39. impacket
40. BloodHound.py
41. NoSQLMap
42. xcat
43. sysinternalsuite
44. kerbrute
45. rustscan (2.0.1)
46. subfinder
47. windowsprivchecker
48. linuxprivchecker
49. xssmap
50. httpx
51. jwt_tool
52. lfimap
53. kali-linux-everything
54. msfpc
55. assetfinder
56. set
57. nmap
58. nikto
59. enum4linux-ng
60. commix
61. httprobe
62. NetExec (since crackmapexec is deprecated)
63. p0wny-shell
64. csrf-poc-generator
65. trufflehog
66. remmina
67. GLPIScan
68. cvemap (API key needed to be setup up by user)
69. Sliver (C2)
70. Wfuzz
71. ntlm_theft
72. krbrelayx
73. bloodyAD
74. FullPowers
75. RunasCs
76. Nuclei
77. Kiterunner
78. username-anarchy
79. cupp
80. powersploit (powerview, powerup etc)
81. SharpCollection
82. Donut
83. Godpotato
84. PrecompiledBinaries
85. apachetomcatscanner
86. reconrunner (by me)
87. Pentest-Cheatsheets (Tib3rius)

The script downloads and runs the pimp-my-kali script which here is used to update the system further and install/update more essentials tools and dependencies. 
You are free to download the script again and use it to upgrade your system further etc. 



