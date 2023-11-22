#!/bin/bash

clear
clear
echo "Please enter your username:"
read username
clear
echo "The script will now update the system and download tools"
sleep 5

sudo apt update -y
sudo apt upgrade -y
sudo apt full-upgrade -y 
sudo apt dist-upgrade -y

sudo apt install nmap

apt --fix-broken install

mkdir tools
cd tools

mkdir web
mkdir system
mkdir system/linux
mkdir system/windows
mkdir pivoting

wget https://github.com/carlospolop/PEASS-ng/releases/latest/download/linpeas_linux_amd64 
wget https://github.com/carlospolop/PEASS-ng/releases/latest/download/linpeas.sh
wget https://github.com/carlospolop/PEASS-ng/releases/latest/download/winPEAS.bat 
wget https://github.com/carlospolop/PEASS-ng/releases/latest/download/winPEASx64.exe 
wget https://github.com/carlospolop/PEASS-ng/releases/latest/download/winPEASx64_ofs.exe 
wget https://github.com/carlospolop/PEASS-ng/releases/latest/download/winPEASx86.exe 
wget https://github.com/carlospolop/PEASS-ng/releases/latest/download/winPEASany.exe 
wget https://raw.githubusercontent.com/Tib3rius/windowsprivchecker/master/windowsprivchecker.bat

pip3 install xcat

wget https://download.sysinternals.com/files/SysinternalsSuite.zip

mv linpeas_linux_amd64 linpeas.sh system/linux/
mv winPEAS.bat winPEASx64.exe winPEASx64_ofs.exe SysinternalsSuite.zip  winPEASx86.exe winPEASany.exe windowsprivchecker.bat system/windows/

wget https://github.com/RustScan/RustScan/releases/download/2.0.1/rustscan_2.0.1_amd64.deb
sudo dpkg -i rustscan_2.0.1_amd64.deb
sudo rm rustscan_2.0.1_amd64.deb

pip3 install kerbrute

git clone https://github.com/AlessandroZ/LaZagne
cd LaZagne
wget https://github.com/AlessandroZ/LaZagne/releases/latest/download/LaZagne.exe 
cd ..

mv LaZagne system/windows/

wget https://github.com/SnaffCon/Snaffler/releases/latest/download/Snaffler.exe 
wget https://github.com/itm4n/PrintSpoofer/releases/latest/download/PrintSpoofer32.exe 
wget https://github.com/itm4n/PrintSpoofer/releases/latest/download/PrintSpoofer64.exe 

mv Snaffler.exe PrintSpoofer32.exe PrintSpoofer64.exe system/windows/

mkdir potato
cd potato
git clone https://github.com/breenmachine/RottenPotatoNG
git clone https://github.com/antonioCoco/RoguePotato
git clone https://github.com/ohpe/juicy-potato
git clone https://github.com/CCob/SweetPotato
wget https://github.com/ohpe/juicy-potato/releases/latest/download/JuicyPotato.exe 
cd ..

mv potato system/windows/

wget https://download.sysinternals.com/files/AccessChk.zip

mv AccessChk.zip system/windows/

mkdir ligolo-ng
cd ligolo-ng
mkdir proxy
mkdir agen
git clone https://github.com/nicocha30/ligolo-ng
cd agen
wget https://github.com/nicocha30/ligolo-ng/releases/latest/download/ligolo-ng_agent_0.4.4_linux_amd64.tar.gz 
wget https://github.com/nicocha30/ligolo-ng/releases/latest/download/ligolo-ng_agent_0.4.4_windows_amd64.zip 
cd ..
cd proxy
wget https://github.com/nicocha30/ligolo-ng/releases/latest/download/ligolo-ng_proxy_0.4.4_linux_amd64.tar.gz 
wget https://github.com/nicocha30/ligolo-ng/releases/latest/download/ligolo-ng_proxy_0.4.4_windows_amd64.zip 
cd ..
cd ..

mv ligolo-ng pivoting/

wget https://github.com/diego-treitos/linux-smart-enumeration/releases/latest/download/lse.sh 

mv lse.sh system/linux/

wget https://github.com/DominicBreuker/pspy/releases/latest/download/pspy32 
wget https://github.com/DominicBreuker/pspy/releases/latest/download/pspy64

mv pspy32 pspy64 system/linux/

sudo apt install --only-upgrade firefox-esr


sudo apt update -y
sudo apt upgrade -y
sudo apt install sublime-text

# List of tools to install using apt
tools_to_install=(
    "gobuster"
    "feroxbuster"
    "dirsearch"
    "seclists"
    "openjdk-11-jdk"
    "neo4j"
    "bloodhound"
    "subfinder"
    "kali-linux-default"
    "kali-tools-database"
    "kali-tools-information-gathering"
    "kali-tools-passwords"
    "msfpc"
    "assetfinder"
    "kali-tools-post-exploitation"
    "set"
    "kali-tools-top10"
    "kali-tools-web"

)


echo "Installing tools using apt..."


sudo apt install apt-transport-https
sudo apt update -y
sudo apt upgrade -y
sudo apt full-upgrade -y 
sudo apt dist-upgrade -y

# extra command to make sure autorecon works
sudo apt install seclists curl dnsrecon enum4linux feroxbuster gobuster impacket-scripts nbtscan nikto nmap onesixtyone oscanner redis-tools smbclient smbmap snmp sslscan sipvicious tnscmd10g whatweb wkhtmltopdf

sudo apt install python3-venv
python3 -m pip install --user pipx
python3 -m pipx ensurepath

python3 -m pipx install impacket

sudo python3 -m pipx ensurepath

sudo pipx install git+https://github.com/Tib3rius/AutoRecon.git

# installs all the tools with apt
sudo apt install -y "${tools_to_install[@]}"
sudo apt update -y
sudo apt upgrade -y

# GitHub repository URLs
repo_urls=(
    "https://github.com/r3motecontrol/Ghostpack-CompiledBinaries"
    "https://github.com/Kevin-Robertson/Inveigh"
    "https://github.com/AonCyberLabs/Windows-Exploit-Suggester"
    "https://github.com/ropnop/windapsearch"
    "https://github.com/GhostPack/Rubeus"
    "https://github.com/itm4n/PrivescCheck"
    "https://github.com/ParrotSec/mimikatz"
    "https://github.com/int0x33/nc.exe"
    "https://github.com/topotam/PetitPotam"
    "https://github.com/rebootuser/LinEnum"
    "https://github.com/The-Z-Labs/linux-exploit-suggester"
    "https://github.com/jondonas/linux-exploit-suggester-2"
    "https://github.com/pentestmonkey/php-reverse-shell"
    "https://github.com/epinna/tplmap"
    "https://github.com/enjoiz/XXEinjector"
    "https://github.com/Ebryx/GitDump"
    "https://github.com/WhiteWinterWolf/wwwolf-php-webshell"
    "https://github.com/GhostPack/SharpUp"
    "https://github.com/GhostPack/Seatbelt"
    "https://github.com/fortra/impacket"
    "https://github.com/dirkjanm/BloodHound.py"
    "https://github.com/BloodHoundAD/BloodHound"
    "https://github.com/Jewel591/xssmap"
    "https://github.com/ticarpi/jwt_tool"
    "https://github.com/hansmach1ne/LFImap"
    
)

# Loop through the repository URLs and clone each one into the current directory
for url in "${repo_urls[@]}"; do
    repo_name=$(basename "$url" .git)
    echo "Cloning $repo_name..."
    git clone "$url"
done

mv Ghostpack-CompiledBinaries Inveigh Windows-Exploit-Suggester windapsearch Rubeus PrivescCheck mimikatz nc.exe PetitPotam SharpUp Seatbelt impacket BloodHound.py BloodHound system/windows/
mv linux-exploit-suggester linux-exploit-suggester-2 LinEnum system/linux/

git clone https://github.com/codingo/NoSQLMap
cd NoSQLMap
sudo python setup.py install
cd ..
mv php-reverse-shell NoSQLMap xssmap tplmap XXEinjector jwt_tool GitDump LFImap wwwolf-php-webshell web/

mkdir system/linux/dirtycow/

wget https://raw.githubusercontent.com/dirtycow/dirtycow.github.io/master/dirtyc0w.c -O system/linux/dirtycow/dirtyc0w.c
wget https://gist.githubusercontent.com/rverton/e9d4ff65d703a9084e85fa9df083c679/raw/9b1b5053e72a58b40b28d6799cf7979c53480715/cowroot.c -O system/linux/dirtycow/cowroot.c
wget https://gist.githubusercontent.com/scumjr/17d91f20f73157c722ba2aea702985d2/raw/a37178567ca7b816a5c6f891080770feca5c74d7/dirtycow-mem.c -O system/linux/dirtycow/dirtycow-mem.c
wget https://raw.githubusercontent.com/dirtycow/dirtycow.github.io/master/pokemon.c -O system/linux/dirtycow/pokemon.c
wget https://github.com/xlucas/dirtycow.cr/releases/latest/download/dirtycow-amd64 -O system/linux/dirtycow/dirtycow.cr
wget https://gist.githubusercontent.com/KrE80r/42f8629577db95782d5e4f609f437a54/raw/71c902f55c09aa8ced351690e1e627363c231b45/c0w.c -O system/linux/dirtycow/c0w.c
wget https://raw.githubusercontent.com/firefart/dirtycow/master/dirty.c -O system/linux/dirtycow/dirty.c



git clone https://github.com/Dewalt-arch/pimpmykali
cd pimpmykali
echo "1" | sudo ./pimpmykali.sh
echo "3" | sudo ./pimpmykali.sh
echo "5" | sudo ./pimpmykali.sh
cd .. 
rm -r pimpmykali

go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest

sudo apt install realtek-rtl88xxau-dkms
sudo apt install dkms
git clone https://github.com/aircrack-ng/rtl8812au
cd rtl8812au/
make
sudo make install
cd ..
sudo rm -r rtl8812au/

clear

sudo rm -r /opt/linpeas/ 
sudo rm -r /opt/mitm6/
sudo rm -r /opt/winpeas/

clear

sudo apt update -y
sudo apt upgrade -y

clear

go install github.com/ropnop/kerbrute@latest
sudo mv /usr/bin/httpx /usr/bin/httpx-bak
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest

clear

apt --fix-broken install
sudo apt update -y
sudo apt upgrade -y
sudo apt full-upgrade -y 
sudo apt dist-upgrade -y

sudo chown -R $username:$username tools

clear


echo "Tools and repositories cloned successfully."
echo " "
echo "All Done! Happy Hacking!"






