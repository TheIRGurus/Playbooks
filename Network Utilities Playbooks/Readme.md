# Network Utilities Playbooks
These playbooks are using Network Utilities for SOAR 1.0.2. These playbooks are specifically designed to enhance the data within an incident instead of a SOP Style Playbook.

## Integration Dependencies
There is 1 dependency for the .res export.

- [Network Utilities for SOAR](https://exchange.xforce.ibmcloud.com/hub/extension/a4a42beebf6344cb9cdbe43d4461abe1) version 1.0.3

    <sub>Note: The RES export does not include the NMAP Scan as this has some additional setup listed in its section below.</sub>

## NMAP Scan
This playbook takes some additional setup. The steps below will help outline the changes needed within the fn_utilities app.config file.

### Additional Dependencies
This playbook has 1 additional dependency from the rest of them as it also uses another integration.

- [SOAR Function Utilities for SOAR](https://exchange.xforce.ibmcloud.com/hub/extension/2130e450a06aa760b2556bf981068159) version 1.0.1

1. Under the Section "# Remote Computers":

	- Create the connection information for remote computer running NMAP.
	
		<sub>Note: NMAP is expected to already be installed on the system you are configuring.</sub>
	
		>remote_computer = (username:password@serverip_or_fqdn)

        If you want to encrypt the password, you mush encrypted the entire user, password, and server info.
		
	<sub>Note: If your user has to run nmap with the command sudo this will not work, you must use the root user itself for this specific instance.</sub>

2. Under the Section "# Remote Command Linux":

	- Create the commands that will be running for the NMAP Playbook; those commands are listed below:
	
		>nmap = (nmap {{shell_param1}} {{shell_param2}} {{shell_param3}})
		>
		>base64 = (base64 {{shell_param1}} -w 0)
