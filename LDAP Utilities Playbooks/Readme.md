# LDAP Utilities Playbooks
These playbooks are designed to easily allow an analyst to perform tasks like looking up users in LDAP or manipulating accounts for security purposes.

### LDAP: User Lookup
This Playbook will require the following DataTable be created, of course this changes if you change the attributes outputted.

DataTable Name: LDAP Data | API Name: ldap_data

| Column Names | API Names     |
| ------------ | ------------- |
| Username     | dt_username   |
| Name         | dt_user_name  |
| Job title    | dt_job_title  |
| Department   | dt_department |
| Email        | dt_email      |
| Location     | dt_location   |
| Manager      | dt_manager    |
