# LDAP Utilities Playbooks
These playbooks are designed to easily allow an analyst to perform tasks like looking up users in LDAP or manipulating accounts for security purposes.

### LDAP: User Lookup
This Playbook will require the following DataTable be created, of course this changes if you change the attributes outputted.

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
