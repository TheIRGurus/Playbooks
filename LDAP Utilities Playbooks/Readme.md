# LDAP Utilities Playbooks
These playbooks are designed to easily allow an analyst to perform tasks like looking up users in LDAP or manipulating accounts for security purposes.

## Integration Dependencies
There is 1 dependency for the .res export.

- [LDAP and Active Directory Functions for SOAR](https://exchange.xforce.ibmcloud.com/hub/extension/72b8204066d3b290b68bae2eeb1942cd) version 2.1.1

### LDAP: User Lookup
This Playbook will require the following DataTable be created unless using the .res file, of course this changes if you change the attributes outputted.

DataTable Name: LDAP Data | API Name: ldap_data

| Column Names | API Names     | Field Type |
| ------------ | ------------- | ---------- |
| Username     | dt_username   | Text       |
| Name         | dt_user_name  | Text       |
| Job title    | dt_job_title  | Text       |
| Department   | dt_department | Text       |
| Email        | dt_email      | Text       |
| Location     | dt_location   | Text       |
| Manager      | dt_manager    | Text       |
