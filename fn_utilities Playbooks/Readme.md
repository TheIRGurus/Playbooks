# FN-Utilities Playbooks
These playbooks are using Utility Functions for SOAR 2.1.1 (AKA fn_utitlies). These playbooks are specifically designed to enhance the data within your incident instead of a SOP Style Playbook.

### NMAP Scan
This playbooks takes some additional setup. The steps below will help outline the changes needed within the fn_utilities app.config file.

> Under the Section "# Remote Computers":

	Create the connection information for remote computer running NMAP. (Note: NMAP is expected to already be installed on the system you are configuring.)
    
		remote_computer_linux = (username:password@serverip_or_name)
    
    (Note: if your user has to run nmap with the command sudo this will not work unless you use the root user itself)


> Under the Section "# Remote Command Linux":

	Create the following commands that you will be running for the NMAP Playbook:
  
		nmap = (nmap {{shell_param1}} {{shell_param2}} {{shell_param3}})
    
		base64 = (base64 {{shell_param1}} -w 0)
