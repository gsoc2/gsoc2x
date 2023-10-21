#curl -X POST -H "Content-Type: application/json" soc2.khulnasoft.com/functions/sendmail -H "Authorization: Bearer " -d '{"target": "gsoc2@soc2.khulnasoft.com", "body": "Hey, this is a body for something to look at", "subject": "SOS check me", "type": "alert", "sender_company": "gsoc2"}'

curl -X POST -H "Content-Type: application/json" localhost:5001/functions/sendmail -H "Authorization: Bearer " -d '{"targets": ["gsoc2@soc2.khulnasoft.com", "rheyix.yt@gmail.com"], "body": "Hey, this is a body for something to look at", "subject": "SOS check me", "type": "alert", "sender_company": "gsoc2"}'
