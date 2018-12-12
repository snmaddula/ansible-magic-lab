# Ansible & Ansible Tower (AWX) Lab Setup
Magic scripts to setup Ansible <b>Learner's Lab</b> environment with Ansible Tower (AWX)

### Launch Sequence
Open Powershell in 'Administrator' mode and execute the below commands in a sequence.

### [1] Switch to HOME directory 
    cd ~

### [2] Create a LAB directory
    mkdir __lab__ && cd __lab__

### [3] Bypass SSL
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

### [4] Setup Git + SSH Client
    Invoke-WebRequest -Uri https://github.com/git-for-windows/git/releases/download/v2.20.0.windows.1/Git-2.20.0-64-bit.exe -OutFile gitbin.exe
    cmd "/C .\gitbit.exe /SP- /SILENT /NOCANCEL /NORESTART /SAVEINF=silent_git"
    $env:Path="$env:Path;C:\Program Files\Git\bin\;C:\Program Files\Git\usr\bin\;"
    rm gitbin.exe

### [5] Setup VirtualBox
    Invoke-WebRequest -Uri https://download.virtualbox.org/virtualbox/5.2.22/VirtualBox-5.2.22-126460-Win.exe -OutFile vbox.exe
    cmd "/C .\vbox.exe -msiparams ADDLOCAL=VBoxApplication,VBoxUSB NETWORKTYPE=NDIS6 --silent"
    rm vbox.exe

### [6] Setup Vagrant
    Invoke-WebRequest -Uri https://releases.hashicorp.com/vagrant/2.2.2/vagrant_2.2.2_x86_64.msi -OutFile vag.msi
    cmd "/C .\vag.msi"
    rm vag.msi
    
### [7] Ansible & AWX Lab Setup
    cmd "/C git clone https://github.com/snmaddula/ansible-magic-lab.git"
    cd ansible-magic-lab
    cmd "/c vagrant up"
    
    
    
