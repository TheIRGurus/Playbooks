# Task Tracking
This is a playbook designed to easily allow tracking of Task Completion as well as assigning tasks to the analyst that closed the task if task was unassigned.

### Task Tracker
This playbook takes some additional setup. The steps below will help outline the Data Table that will be needed to created to properly use this playbook.

DataTable Name: Task History | API Name: task_history

| Column Names        | API Names           | Field Type       |
| ------------------- | ------------------- | ---------------- |
| Task ID             | task_id             | Text             |
| Task Name           | task_name           | Text             |
| Task Notes          | task_notes          | Text             |
| Task Owner          | task_owner          | Text             |
| Init Date           | init_date           | Date Time Picker |
| Closed Date         | closed_date         | Date Time Picker |
| Time to Close       | time_to_close       | Text             |
| Action Completed By | action_completed_by | Text             |
