@"

 ██████████                           ██████████                       
░░███░░░░███                         ░░███░░░░░█                       
 ░███   ░░███  ██████  █████ █████    ░███  █ ░  ████████   █████ █████
 ░███    ░███ ███░░███░░███ ░░███     ░██████   ░░███░░███ ░░███ ░░███ 
 ░███    ░███░███████  ░███  ░███     ░███░░█    ░███ ░███  ░███  ░███ 
 ░███    ███ ░███░░░   ░░███ ███      ░███ ░   █ ░███ ░███  ░░███ ███  
 ██████████  ░░██████   ░░█████       ██████████ ████ █████  ░░█████   
░░░░░░░░░░    ░░░░░░     ░░░░░       ░░░░░░░░░░ ░░░░ ░░░░░    ░░░░░    
                                                                       
                                                                
By: PS
# https://textkool.com/en/ascii-art-generator?hl=controlled%20smushing&vl=fitted&font=DOS%20Rebel&text=Malware%20Labs
"@

# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco feature enable -n allowGlobalConfirmation

#-------------------------------------------------------------------------------------------------------------
# INSTALL SECTION
#-------------------------------------------------------------------------------------------------------------
# Disassemblers 
#-----------------
choco install -y ida-free --checksum 2289a03c9f2f2c2fa3de86453139302108a32abf3b98d27267b2c9bfa48056cf
choco install -y cutter

# Dev Tooling
#-----------------
# choco install windows-sdk-10-version-1903-windbg
# IDE's
choco install notepadplusplus
choco install -y vscode

# Python3
choco install -y python3
code --install-extension ms-python.python --force
# python3 dependicies
C:\\Python311\\python.exe -m pip install hexdump colorama pefile

# Golang
choco install golang
choco install vscode-go

# Rust
choco install rust
code --install-extension rust-lang.rust-analyzer --force


# Misc Tooling
#-----------------

# Hex Editor
choco install -y 010editor

choco install -y git

# ProcessHacker v2.39
choco install -y processhacker

choco install 7zip

choco install grep
# Java
# choco install javadecompiler-gui
# choco install javaruntime
#-------------------------------------------------------------------------------------------------------------
# SETUP SECTION
#-------------------------------------------------------------------------------------------------------------
# IDA Pro (Default Dark mode)
 cp theme.css 'C:\Program Files\IDA Freeware 8.2\themes\default\'

# Lab Files
#-----------------
# Clone project

git clone https://github.com/elusivethreat/GODark_Challenge

