import re
from datetime import datetime


# Create Functions for handling data.
def readable_date(res_date_time):
    ep_date_time = res_date_time / 1000.0
    readable_date_time = datetime.fromtimestamp(ep_date_time).strftime('%Y-%m-%d %H:%M:%S')
    return(readable_date_time)


# Parses out email information.
email_headers = emailmessage.headers
email_sender = emailmessage.sender
email_to = emailmessage.to
email_cc = emailmessage.cc
email_subject = emailmessage.subject
email_sent = emailmessage.sent_date
email_received = emailmessage.received_date
email_body = emailmessage.body
email_attachments = emailmessage.attachments


# Establish Incident Association.
id_regex = re.compile(r'\(ID: (\d+)\)')
incident_id = re.findall(id_regex, email_subject)

if incident_id:
    query_builder.equals(fields.incident.id, int(incident_id[0]))
    query = query_builder.build()
    incidents = helper.findIncidents(query)
    emailmessage.associateWithIncident(incidents[0])
    
else:
    emailmessage.createAssociatedIncident(email_subject,'Tier 1 Analysts')
    # Add Additional Artifacts from Email.
    for recipient in email_to + email_cc:
        incident.addArtifact('Email Recipient', recipient.address, "Email Recipient Received by SOAR")
    incident.addArtifact('Email Sender', email_sender.address, "Email Sender Received by SOAR")
    if email_sender.name:
        incident.addArtifact('Email Sender Name', email_sender.name, "Email Sender Received by SOAR")
    incident.addArtifact('Email Subject', email_subject, "Email Subject Received by SOAR")


# Define Sender, To, and From in a email output fashion.
if email_sender.get('name') and email_sender.get('name') != email_sender.address:
    sender = "{}: <{}>".format(email_sender.name, email_sender.address)
else:
    sender = email_sender.address

if email_to:
    to = ''
    for recipient_to in email_to:
        if recipient_to.get('name') and recipient_to.get('name') != recipient_to.address:
            to = to + "{}: <{}>\n".format(name=recipient_to.name, email=recipient_to.address)
        else:
            to = to + "{}\n".format(recipient_to.address)
else:
    to = 'None'

if email_cc:
    cc = ''
    for recipient_cc in email_cc:
        if recipient_cc.get('name') and recipient_cc.get('name') != recipient_cc.address:
            cc = cc + "{}: <{}>\n".format(recipient_cc.name,recipient_cc.address)
        else:
            cc = cc + "{}\n".format(recipient_cc.address)
else:
    cc = 'None'


# Parse Out Attachments.
attachments_list = []
if email_attachments:
    for attachment in email_attachments:
        if not attachment.inline:
            incident.addEmailAttachment(attachment.id)
            attachments_list.append(attachment.suggested_filename)
            incident.addArtifact('Email Attachment Name', attachment.suggested_filename, "Name of Attachment received in Email.")



# Generate a new Row for Email Conversation.
newRow = incident.addRow('email_conversations')
newRow['date_sent'] = email_received
newRow['status'] = 'success'
newRow['source'] = 'inbound'
newRow['inbound_id'] = emailmessage.id
newRow['from'] = sender
newRow['recipients'] = "To: {}\nCC: {}".format(to, cc)
newRow['subject'] = email_subject
newRow['body'] = email_body['content'].split('From: SOAR')[0]
newRow['attachments'] = ",\n".join(attachments_list)
newRow['message_id'] = email_headers.get('Message-ID')[0][1:-1]



# Apply the Email as a Note.
note = "Email Received On: {}\nSender: {}\nRecipient(s): {}CC: {}\nSubject: {}\n\n".format(readable_date(email_received),sender,to,cc,email_subject) + email_body['content'].split('From: SOAR')[0]
rich_note = helper.createRichText(note)

incident.addNote(rich_note)
