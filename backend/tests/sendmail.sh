#curl -X POST -H "Content-Type: application/json" gsoc2r.io/functions/sendmail -H "Authorization: Bearer " -d '{"target": "gsoc2@gsoc2r.io", "body": "Hey, this is a body for something to look at", "subject": "SOS check me", "type": "alert", "sender_company": "gsoc2r"}'

curl -X POST -H "Content-Type: application/json" localhost:5001/functions/sendmail -H "Authorization: Bearer " -d '{"targets": ["gsoc2@gsoc2r.io", "rheyix.yt@gmail.com"], "body": "Hey, this is a body for something to look at", "subject": "SOS check me", "type": "alert", "sender_company": "gsoc2r"}'
