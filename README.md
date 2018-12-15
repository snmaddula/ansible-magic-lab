# Ansible & Ansible Tower (AWX) Lab Setup
Magic scripts to setup <b>Ansible & Ansible Tower (AWX) Learner's Lab</b> environment on a personal computer.

### Download the Scripts

[AnsibleMagicLab_Pre_Reboot.ps1](https://snmaddula.github.io/pf/AnsibleMagicLab_Pre_Reboot.ps1)

[AnsibleMagicLab_Post_Reboot.ps1](https://snmaddula.github.io/pf/AnsibleMagicLab_Post_Reboot.ps1)


### Launch Sequence
<b>Open Command Prompt in 'Administrator' mode and execute the below commands in a sequence.</b>

### 1. Pre-Reboot Setup
    powershell.exe -ExecutionPolicy Bypass -File AnsibleMagicLab_Pre_Reboot.ps1

<p style="color: red"><b> On Successful installation of Vagrant, the machine should reboot.</b></p>

<b>Once the machine is up, Open Command Prompt in 'Administrator' mode and follow the below steps. </b>

### 2. Post-Reboot Setup
    powershell.exe -ExecutionPolicy Bypass -File AnsibleMagicLab_Post_Reboot.ps1
    

Done that ?
Now you'll be able to access your Ansible Tower (AWX) web interface using the Ip of the Vagrant machine.

Open up a browser and provide the IP `<IP in AWX Machine>` and hit Enter. You'll get to see a page like below.
![AWX Web Interface Login](https://snmaddula.github.io/images/awx/AWX_LOGIN.PNG)

#### CREDENTIALS for AWX Login
    username : admin
    password : password


On successful login, you'll see a dashboard similar to the below one.

![AWX Web Interface Fresh Dashboard](https://snmaddula.github.io/images/awx/AWX_DASHBOARD.PNG)
