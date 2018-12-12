# Ansible & Ansible Tower (AWX) Magic Lab Setup
Magic scripts to setup an Ansible lab environment with Ansible Tower (AWX)

#### Launch Sequence
Open Powershell in 'Administrator' mode and execute the below commands in a sequence.

##### [1] Switch to HOME directory 
    cd ~

##### [2] Create a LAB directory
    mkdir __lab__ && cd __lab__

##### [3] Bypass SSL
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

##### [5] Setup Git + SSH Client
    Invoke-WebRequest -Uri https://github.com/git-for-windows/git/releases/download/v2.20.0.windows.1/Git-2.20.0-64-bit.exe -OutFile gitbin.exe
    cmd "/C .\gitbit.exe"
    rm gitbin.exe

##### [6] Setup Vagrant
    Invoke-WebRequest -Uri https://releases.hashicorp.com/vagrant/2.2.2/vagrant_2.2.2_x86_64.msi -OutFile vag.msi
    cmd "/C .\vag.msi"
    rm vag.msi
    
##### [7] Ansible & AWX Lab Setup
    cmd "/C git clone https://github.com/snmaddula/ansible-magic-lab.git"
    cd ansible-magic-lab
    cmd "/c vagrant up"
    


    
    
