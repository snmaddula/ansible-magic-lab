# Ansible & Ansible Tower (AWX) Lab Setup
Magic scripts to setup <b>Ansible & Ansible Tower (AWX) Learner's Lab</b> environment on a personal computer.

### Download the Scripts

![AnsibleMagicLab_Pre_Reboot.ps1]()
![AnsibleMagicLab_Post_Reboot.ps1]()


### Launch Sequence
Open Command Prompt in 'Administrator' mode and execute the below commands in a sequence.

### [1] Pre-Reboot Setup
    powershell.exe -ExecutionPolicy Bypass -File AnsibleMagicLab_Pre_Reboot.ps1

###### On Successful installation of Vagrant, the machine should reboot.

Once the machine is up, Open Command Prompt in 'Administrator' mode and follow the below steps. 

### [1] Post-Reboot Setup
    powershell.exe -ExecutionPolicy Bypass -File AnsibleMagicLab_Post_Reboot.ps1
    

Done that ?
Now you'll be able to access your Ansible Tower (AWX) web interface using the Ip of the Vagrant machine.

> Open up a browser and provide the IP `<IP in AWX Machine>` and hit Enter. You'll get to see a page like below.
[]()

#### CREDENTIALS for AWX Login
    username : admin
    password : password
