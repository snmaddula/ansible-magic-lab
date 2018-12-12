############################################
### Powershell based Ansible & AWX setup ###
############################################
cd ~
mkdir __lab__ && cd __lab__

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

Invoke-WebRequest -Uri https://github.com/git-for-windows/git/releases/download/v2.20.0.windows.1/Git-2.20.0-64-bit.exe -OutFile gitbin.exe
cmd "/C .\gitbit.exe"
rm gitbin.exe

Invoke-WebRequest -Uri https://releases.hashicorp.com/vagrant/2.2.2/vagrant_2.2.2_x86_64.msi -OutFile vag.msi
cmd "/C .\vag.msi"
rm vag.msi

cd ..
cmd "/C git clone https://github.com/snmaddula/ansible-magic-lab.git"
cd ansible-magic-lab
cmd "/c vagrant up"


