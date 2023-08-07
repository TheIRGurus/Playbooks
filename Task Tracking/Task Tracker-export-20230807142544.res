{"action_order": [], "actions": [], "apps": [], "automatic_tasks": [], "export_date": 1691432744800, "export_format_version": 2, "export_type": null, "fields": [{"export_key": "incident/internal_customizations_field", "id": 0, "input_type": "text", "internal": true, "name": "internal_customizations_field", "read_only": true, "text": "Customizations Field (internal)", "type_id": 0, "uuid": "bfeec2d4-3770-11e8-ad39-4a0004044aa1"}], "functions": [], "geos": null, "groups": null, "id": 35, "inbound_destinations": [], "inbound_mailboxes": null, "incident_artifact_types": [], "incident_types": [{"update_date": 1691432741727, "create_date": 1691432741727, "uuid": "bfeec2d4-3770-11e8-ad39-4a0004044aa0", "description": "Customization Packages (internal)", "export_key": "Customization Packages (internal)", "name": "Customization Packages (internal)", "enabled": false, "system": false, "parent_id": null, "hidden": false, "id": 0}], "industries": null, "layouts": [], "locale": null, "message_destinations": [], "notifications": null, "overrides": null, "phases": [], "playbooks": [{"activation_details": {"activation_conditions": {"conditions": [{"evaluation_id": null, "field_name": "task.status", "method": "changed_to", "type": null, "value": "Closed"}], "logic_type": "all"}}, "activation_type": "automatic", "content": {"content_version": 5, "xml": "<?xml version=\"1.0\" encoding=\"UTF-8\"?><definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:resilient=\"http://resilient.ibm.com/bpmn\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" targetNamespace=\"http://www.camunda.org/test\"><process id=\"playbook_a03f0765_385d_4ba9_87fa_031f442a43b6\" isExecutable=\"true\" name=\"playbook_a03f0765_385d_4ba9_87fa_031f442a43b6\"><documentation/><startEvent id=\"StartEvent_155asxm\"><outgoing>Flow_1i0ml5g</outgoing><outgoing>Flow_0q1f0xn</outgoing></startEvent><scriptTask id=\"ScriptTask_1\" name=\"Assign Task to Closer\"><extensionElements><resilient:script uuid=\"fa5822c1-fdca-4f19-af40-1fef8f34fae8\"/></extensionElements><incoming>Flow_1i0ml5g</incoming><outgoing>Flow_1vpfp0r</outgoing><script>script</script></scriptTask><scriptTask id=\"ScriptTask_2\" name=\"Task Tracker\"><extensionElements><resilient:script uuid=\"a8e7718b-c600-4710-8285-102b6d2b96ff\"/></extensionElements><incoming>Flow_0q1f0xn</incoming><outgoing>Flow_1o331is</outgoing><script>script</script></scriptTask><sequenceFlow id=\"Flow_1i0ml5g\" sourceRef=\"StartEvent_155asxm\" targetRef=\"ScriptTask_1\"/><sequenceFlow id=\"Flow_0q1f0xn\" sourceRef=\"StartEvent_155asxm\" targetRef=\"ScriptTask_2\"/><parallelGateway id=\"CollectionPoint_3\" resilient:documentation=\"Wait point\"><incoming>Flow_1vpfp0r</incoming><incoming>Flow_1o331is</incoming><outgoing>Flow_12q22bw</outgoing></parallelGateway><sequenceFlow id=\"Flow_1vpfp0r\" sourceRef=\"ScriptTask_1\" targetRef=\"CollectionPoint_3\"/><sequenceFlow id=\"Flow_1o331is\" sourceRef=\"ScriptTask_2\" targetRef=\"CollectionPoint_3\"/><endEvent id=\"EndPoint_4\" resilient:documentation=\"End point\"><incoming>Flow_12q22bw</incoming></endEvent><sequenceFlow id=\"Flow_12q22bw\" sourceRef=\"CollectionPoint_3\" targetRef=\"EndPoint_4\"/></process><bpmndi:BPMNDiagram id=\"BPMNDiagram_1\"><bpmndi:BPMNPlane bpmnElement=\"playbook_a03f0765_385d_4ba9_87fa_031f442a43b6\" id=\"BPMNPlane_1\"><bpmndi:BPMNEdge bpmnElement=\"Flow_12q22bw\" id=\"Flow_12q22bw_di\"><omgdi:waypoint x=\"721\" y=\"486\"/><omgdi:waypoint x=\"721\" y=\"594\"/></bpmndi:BPMNEdge><bpmndi:BPMNEdge bpmnElement=\"Flow_1o331is\" id=\"Flow_1o331is_di\"><omgdi:waypoint x=\"880\" y=\"302\"/><omgdi:waypoint x=\"880\" y=\"350\"/><omgdi:waypoint x=\"721\" y=\"350\"/><omgdi:waypoint x=\"721\" y=\"434\"/></bpmndi:BPMNEdge><bpmndi:BPMNEdge bpmnElement=\"Flow_1vpfp0r\" id=\"Flow_1vpfp0r_di\"><omgdi:waypoint x=\"570\" y=\"302\"/><omgdi:waypoint x=\"570\" y=\"350\"/><omgdi:waypoint x=\"721\" y=\"350\"/><omgdi:waypoint x=\"721\" y=\"434\"/></bpmndi:BPMNEdge><bpmndi:BPMNEdge bpmnElement=\"Flow_0q1f0xn\" id=\"Flow_0q1f0xn_di\"><omgdi:waypoint x=\"721\" y=\"117\"/><omgdi:waypoint x=\"721\" y=\"168\"/><omgdi:waypoint x=\"880\" y=\"168\"/><omgdi:waypoint x=\"880\" y=\"218\"/></bpmndi:BPMNEdge><bpmndi:BPMNEdge bpmnElement=\"Flow_1i0ml5g\" id=\"Flow_1i0ml5g_di\"><omgdi:waypoint x=\"721\" y=\"117\"/><omgdi:waypoint x=\"721\" y=\"168\"/><omgdi:waypoint x=\"570\" y=\"168\"/><omgdi:waypoint x=\"570\" y=\"218\"/></bpmndi:BPMNEdge><bpmndi:BPMNShape bpmnElement=\"StartEvent_155asxm\" id=\"StartEvent_155asxm_di\"><omgdc:Bounds height=\"52\" width=\"161.48329999999999\" x=\"640\" y=\"65\"/><bpmndi:BPMNLabel><omgdc:Bounds height=\"0\" width=\"90\" x=\"616\" y=\"100\"/></bpmndi:BPMNLabel></bpmndi:BPMNShape><bpmndi:BPMNShape bpmnElement=\"ScriptTask_1\" id=\"ScriptTask_1_di\"><omgdc:Bounds height=\"84\" width=\"196\" x=\"472\" y=\"218\"/></bpmndi:BPMNShape><bpmndi:BPMNShape bpmnElement=\"ScriptTask_2\" id=\"ScriptTask_2_di\"><omgdc:Bounds height=\"84\" width=\"196\" x=\"782\" y=\"218\"/></bpmndi:BPMNShape><bpmndi:BPMNShape bpmnElement=\"CollectionPoint_3\" id=\"CollectionPoint_3_di\"><omgdc:Bounds height=\"52\" width=\"137.13330000000002\" x=\"652\" y=\"434\"/></bpmndi:BPMNShape><bpmndi:BPMNShape bpmnElement=\"EndPoint_4\" id=\"EndPoint_4_di\"><omgdc:Bounds height=\"52\" width=\"132.15\" x=\"655\" y=\"594\"/></bpmndi:BPMNShape></bpmndi:BPMNPlane></bpmndi:BPMNDiagram></definitions>"}, "create_date": 1669743800918, "creator_principal": {"display_name": "John Doe", "id": 1, "name": "john_doe@company.com", "type": "user"}, "deployment_id": "playbook_a03f0765_385d_4ba9_87fa_031f442a43b6", "description": {"format": "text", "content": "This automation allows to automation use of task tracking including automating assigning on close of task as well as a DataTable that tracks task completion."}, "display_name": "Task Tracker", "export_key": "task_tracker", "field_type_handle": "playbook_a03f0765_385d_4ba9_87fa_031f442a43b6", "fields_type": {"actions": [], "display_name": "Task Tracker", "export_key": "playbook_a03f0765_385d_4ba9_87fa_031f442a43b6", "fields": {}, "for_actions": false, "for_custom_fields": false, "for_notifications": false, "for_workflows": false, "id": null, "parent_types": ["__playbook"], "properties": {"can_create": false, "can_destroy": false, "for_who": []}, "scripts": [], "tags": [], "type_id": 28, "type_name": "playbook_a03f0765_385d_4ba9_87fa_031f442a43b6", "uuid": "e751ab09-d78c-4f7c-9c8a-346487e584b7"}, "has_logical_errors": false, "id": 49, "is_deleted": false, "is_locked": false, "last_modified_principal": {"display_name": "John Doe", "id": 1, "name": "john_doe@company.com", "type": "user"}, "last_modified_time": 1691432641247, "local_scripts": [{"actions": [], "created_date": 1669744056621, "description": "Script that checks if the closer was a user and if they are, adds them as the owner of the task.", "enabled": false, "export_key": "Assign Task to Closer", "id": 50, "language": "python3", "last_modified_by": "john_doe@company.com", "last_modified_time": 1669911583797, "name": "Assign Task to Closer", "object_type": "task", "playbook_handle": "task_tracker", "programmatic_name": "task_tracker_assign_task_to_closer", "script_text": "if task.owner_id:\n    log.info('Owner already defined.')\nelif str(principal.type) == \"user\":\n    already_member = False\n    for member in incident.members:\n        if principal.name == member:\n            already_member = True\n            log.info('Already a Member')\n            break\n        if '@' not in member:\n            if groups.findByName(member):\n                already_member = True\n                log.info('Already in a Group')\n                break\n    if not already_member:\n        log.info('Not a Member')\n        incident.members = incident.members + [principal.name]\n        log.info('Added as Member')\n    task.owner_id = principal.name\nelse:\n    note = 'Principal Type: {}\\nPrincipal Name: {}\\nPrincipal Display Name: {}'.format(principal.type,principal.name,principal.display_name)\n    incident.addNote(helper.createRichText(note))\n", "tags": [], "uuid": "fa5822c1-fdca-4f19-af40-1fef8f34fae8"}, {"actions": [], "created_date": 1669744343875, "description": "This script is meant to run upon any task being closed. It is used to perform any calculations, logic, or actions on the Task and/or Incident data to modify the Task and/or Incident attributes.", "enabled": false, "export_key": "Task Tracker", "id": 51, "language": "python3", "last_modified_by": "john_doe@company.com", "last_modified_time": 1691432636229, "name": "Task Tracker", "object_type": "task", "playbook_handle": "task_tracker", "programmatic_name": "task_tracker_task_tracker", "script_text": "# Task Tracker\ntask_name = task.name\ntask_init_date = task.init_date\ntask_closed_date = task.closed_date\ntask_id = task.id\nif task_closed_date is None:\n    task_closed_date = task_init_date\ntask_status = task.status\ntask_inc_id = task.inc_id\n\n# Create task note\nlog.info('Creating task note...')\ntask_note = \"Task Opened\"\nif task_status == \"C\":\n    task_note = \"Task Closed\"\n\n# Create time duration\nlog.info('Calculating duration...')\ntask_closetime = \"task not closed\"\nif task_closed_date is not None:\n    secs = (int(task_closed_date)-int(task_init_date))/1000\n    minutes = int(secs/60)\n    secs = secs % 60\n    hours = int(minutes/60)\n    minutes = minutes % 60\n    days = int(hours/24)\n    hours = hours % 24\n    task_closetime = \"{}d {}h {}m {}s\".format(days, hours, minutes, str(int(secs)))\n\n# Create DataTable Entry.\nrow = incident.addRow(\"task_history\")\nrow.task_name = task_name\nrow.task_notes = str(task_note)\nrow.init_date = task_init_date\nrow.closed_date = task_closed_date\nrow.time_to_close = str(task_closetime)\nrow.task_id = str(task_id)\nrow.action_completed_by = str(principal.name)\nrow.task_owner = str(task.owner_id)\n", "tags": [], "uuid": "a8e7718b-c600-4710-8285-102b6d2b96ff"}], "name": "task_tracker", "object_type": "task", "status": "enabled", "tag": {"display_name": "Playbook_a03f0765-385d-4ba9-87fa-031f442a43b6", "id": 86, "name": "playbook_a03f0765_385d_4ba9_87fa_031f442a43b6", "type": "playbook", "uuid": "983de6b5-df0d-4949-a464-f5dfa049598d"}, "tags": [], "type": "default", "uuid": "a03f0765-385d-4ba9-87fa-031f442a43b6", "version": 8}], "regulators": null, "roles": [], "scripts": [], "server_version": {"build_number": 8131, "major": 46, "minor": 0, "version": "46.0.8131"}, "tags": [], "task_order": [], "timeframes": null, "types": [{"actions": [], "display_name": "Task History", "export_key": "task_history", "fields": {"action_completed_by": {"allow_default_value": false, "blank_option": false, "calculated": false, "changeable": true, "chosen": false, "default_chosen_by_server": false, "deprecated": false, "export_key": "task_history/action_completed_by", "hide_notification": false, "id": 1257, "input_type": "text", "internal": false, "is_tracked": false, "name": "action_completed_by", "operation_perms": {}, "operations": [], "order": 6, "placeholder": "", "prefix": null, "read_only": false, "rich_text": false, "short_text": "", "tags": [], "templates": [], "text": "Action Completed By", "tooltip": "Who Closed the Task", "type_id": 1088, "uuid": "b93ff4bb-6e7e-46e1-bfcc-8d602213fa27", "values": [], "width": 186}, "closed_date": {"allow_default_value": false, "blank_option": false, "calculated": false, "changeable": true, "chosen": false, "default_chosen_by_server": false, "deprecated": false, "export_key": "task_history/closed_date", "hide_notification": false, "id": 1258, "input_type": "datetimepicker", "internal": false, "is_tracked": false, "name": "closed_date", "operation_perms": {}, "operations": [], "order": 3, "placeholder": "", "prefix": null, "read_only": false, "rich_text": false, "short_text": "", "tags": [], "templates": [], "text": "Closed Date", "tooltip": "Date the Task Closed", "type_id": 1088, "uuid": "12e50bb5-ef8d-4f42-9575-0b66e0a010dc", "values": [], "width": 164}, "init_date": {"allow_default_value": false, "blank_option": false, "calculated": false, "changeable": true, "chosen": false, "default_chosen_by_server": false, "deprecated": false, "export_key": "task_history/init_date", "hide_notification": false, "id": 1259, "input_type": "datetimepicker", "internal": false, "is_tracked": false, "name": "init_date", "operation_perms": {}, "operations": [], "order": 2, "placeholder": "", "prefix": null, "read_only": false, "rich_text": false, "short_text": "", "tags": [], "templates": [], "text": "Init Date", "tooltip": "Task creation date", "type_id": 1088, "uuid": "9aa1089e-7a43-4823-a240-bc9c61bb6b7a", "values": [], "width": 164}, "task_id": {"allow_default_value": false, "blank_option": false, "calculated": false, "changeable": true, "chosen": false, "default_chosen_by_server": false, "deprecated": false, "export_key": "task_history/task_id", "hide_notification": false, "id": 1260, "input_type": "text", "internal": false, "is_tracked": false, "name": "task_id", "operation_perms": {}, "operations": [], "order": 5, "placeholder": "", "prefix": null, "read_only": false, "rich_text": false, "short_text": "", "tags": [], "templates": [], "text": "Task ID", "tooltip": "Task identifier", "type_id": 1088, "uuid": "9e8266c7-1279-4191-b3ed-feb5abfe8533", "values": [], "width": 108}, "task_name": {"allow_default_value": false, "blank_option": true, "calculated": false, "changeable": true, "chosen": true, "default_chosen_by_server": false, "deprecated": false, "export_key": "task_history/task_name", "hide_notification": false, "id": 1261, "input_type": "text", "internal": false, "is_tracked": false, "name": "task_name", "operation_perms": {}, "operations": [], "order": 0, "placeholder": "", "prefix": null, "read_only": false, "rich_text": false, "short_text": "", "tags": [], "templates": [], "text": "Task Name", "tooltip": "Task Name", "type_id": 1088, "uuid": "2da44b58-d233-4624-a61e-580f3cca2074", "values": [], "width": 370}, "task_notes": {"allow_default_value": false, "blank_option": true, "calculated": false, "changeable": true, "chosen": true, "default_chosen_by_server": false, "deprecated": false, "export_key": "task_history/task_notes", "hide_notification": false, "id": 1262, "input_type": "text", "internal": false, "is_tracked": false, "name": "task_notes", "operation_perms": {}, "operations": [], "order": 1, "placeholder": "", "prefix": null, "read_only": false, "rich_text": false, "short_text": "", "tags": [], "templates": [], "text": "Task Notes", "tooltip": "Task Notes", "type_id": 1088, "uuid": "5992fb97-5899-4ff8-aeeb-95bd78e04f4d", "values": [], "width": 398}, "task_owner": {"allow_default_value": false, "blank_option": false, "calculated": false, "changeable": true, "chosen": false, "default_chosen_by_server": false, "deprecated": false, "export_key": "task_history/task_owner", "hide_notification": false, "id": 1263, "input_type": "text", "internal": false, "is_tracked": false, "name": "task_owner", "operation_perms": {}, "operations": [], "order": 7, "placeholder": "", "prefix": null, "read_only": false, "rich_text": false, "short_text": "", "tags": [], "templates": [], "text": "Task Owner", "tooltip": "Task Ownership", "type_id": 1088, "uuid": "50562e20-931a-4237-9b7c-7fb113a8e968", "values": [], "width": 246}, "time_to_close": {"allow_default_value": false, "blank_option": false, "calculated": false, "changeable": true, "chosen": false, "default_chosen_by_server": false, "deprecated": false, "export_key": "task_history/time_to_close", "hide_notification": false, "id": 1264, "input_type": "text", "internal": false, "is_tracked": false, "name": "time_to_close", "operation_perms": {}, "operations": [], "order": 4, "placeholder": "", "prefix": null, "read_only": false, "rich_text": false, "short_text": "", "tags": [], "templates": [], "text": "Time to Close", "tooltip": "Time taken to close", "type_id": 1088, "uuid": "f8c615e7-0211-42a9-bc47-268642214572", "values": [], "width": 129}}, "for_actions": false, "for_custom_fields": false, "for_notifications": false, "for_workflows": false, "id": null, "parent_types": ["incident"], "properties": {"can_create": false, "can_destroy": false, "for_who": []}, "scripts": [], "tags": [], "type_id": 8, "type_name": "task_history", "uuid": "64233dc5-da02-4d90-a861-cef63d03c36a"}], "workflows": [], "workspaces": []}