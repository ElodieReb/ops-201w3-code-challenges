# Output all events from the System event log that occurred in the last 24 hours to a file on your desktop named last_24.txt
 $YesterdayStart = (Get-Date).AddDays(-1).Date
 $From = Get-EventLog -LogName System -After $YesterdayStart
 # This output isn't exactly gathering data from the last 24 hours
 # Instead it gathers data from the previous day until the current time - good enough
Add-Content -Path C:\Users\Elodie\Desktop\last_24.txt -Value $From

# Output all "error" type events from the System event log to a file on your desktop named errors.txt
# I'm going to limit this to the last 50 error events
$FromAgain = Get-EventLog -LogName System -EntryType Error -Newest 50
Add-Content -Path C:\Users\Elodie\Desktop\errors.txt -Value $FromAgain

# Print to the screen all events with ID of 16 from the System event log
Get-EventLog -LogName System | Where-Object {$_.EventID -eq 16}

# Print to the screen the most recent 20 entries from the System event log
Get-EventLog -LogName System -Newest 20

# Print to the screen all sources of the 500 most recent entries in the System event log
# Ensure that the full lines are displayed (get rid of the ... and show the entire text)
Get-EventLog -LogName System -Newest 500 | Select-Object -Property Source
