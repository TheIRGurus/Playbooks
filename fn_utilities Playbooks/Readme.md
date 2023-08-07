# FN-Utilities Playbooks (<font color=red>Discontinued</font>)

<font color=red>**This app and its playbooks have been discontinued due to IBM splitting the app into multiple apps. While the playbooks and app will still work, the app and these playbooks are no longer being maintained. Check the individual app folder for new versions of these playbooks.**</font>

These playbooks are using Utility Functions for SOAR 2.1.1 (AKA fn_utitlies). These playbooks are specifically designed to enhance the data within an incident instead of a SOP Style Playbook.

### NMAP Scan
This playbook takes some additional setup. The steps below will help outline the changes needed within the fn_utilities app.config file.

1. Under the Section "# Remote Computers":

	- Create the connection information for remote computer running NMAP.
	
		<sub>Note: NMAP is expected to already be installed on the system you are configuring.</sub>
	
		>remote_computer_linux = (username:password@serverip_or_name)
		
	<sub>Note: If your user has to run nmap with the command sudo this will not work, you must use the root user itself for this specific instance.</sub>

2. Under the Section "# Remote Command Linux":

	- Create the commands that will be running for the NMAP Playbook; those commands are listed below:
	
		>nmap = (nmap {{shell_param1}} {{shell_param2}} {{shell_param3}})
		>base64 = (base64 {{shell_param1}} -w 0)
