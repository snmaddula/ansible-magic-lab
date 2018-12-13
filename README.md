# Ansible & Ansible Tower (AWX) Lab Setup
Magic scripts to setup <b>Ansible & Ansible Tower (AWX) Learner's Lab</b> environment on a personal computer.

### Launch Sequence
Open Powershell in 'Administrator' mode and execute the below commands in a sequence.

### [1] Disable Hyper-V
    Disable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V-All -NoRestart
    
### [2] Setup Lab directory 
    New-Item -ItemType Directory -Path ~/__LAB__ -Force; cd ~/__LAB__

### [3] Bypass SSL
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

### [4] Setup Git + SSH Client
    Invoke-WebRequest -Uri https://github.com/git-for-windows/git/releases/download/v2.20.0.windows.1/Git-2.20.0-64-bit.exe -OutFile gitbin.exe
    cmd "/C .\gitbin.exe /SP- /SILENT /NOCANCEL /NORESTART /COMPONENTS=icons,ext\reg\shellhere,assoc,assoc_sh"
    $env:Path="$env:Path;C:\Program Files\Git\bin\;C:\Program Files\Git\usr\bin\;"
    rm gitbin.exe

### [5] Setup VirtualBox
    Invoke-WebRequest -Uri https://download.virtualbox.org/virtualbox/5.2.22/VirtualBox-5.2.22-126460-Win.exe -OutFile vbox.exe
    cmd "/C .\vbox.exe -msiparams ADDLOCAL=VBoxApplication,VBoxUSB,VBoxNetwork,VBoxPython,VBoxNetworkFlt,VBoxNetworkAdp --silent"
    rm vbox.exe
    
### [6] Disable Hyper-V
    Disable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V-All -NoRestart
    
###### At this stage, the machine will reboot! 
###### Once, the machine is up, Open Powershell in 'Administrator' mode and follow the below steps.
    
### [7] Setup Vagrant
    cd ~/__lab__
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    Invoke-WebRequest -Uri https://releases.hashicorp.com/vagrant/2.2.2/vagrant_2.2.2_x86_64.msi -OutFile vag.msi
    cmd "/C .\vag.msi"
    rm vag.msi
    
###### On Successful installation of Vagrant, the machine should reboot.
###### Once, the machine is up, Open Powershell in 'Administrator' mode and follow the below steps. 

### [8] Ansible & AWX Lab Setup
    cd ~/__lab__
    rm vag.msi
    cmd "/C git clone https://github.com/snmaddula/ansible-magic-lab.git"
    cd ansible-magic-lab
    cmd "/c vagrant up"

### [9] Fetch IP Address of the AWX machine
    vagrant ssh -c "hostname -I | cut -d ' ' -f2"
Done that ?
Now you'll be able to access your Ansible Tower (AWX) web interface using the Ip of the Vagrant machine.

> Open up a browser and provide the IP `<IP in AWX Machine>` and hit Enter. You'll get to see a page like below.
[]()

#### CREDENTIALS for AWX Login
    username : admin
    password : password
