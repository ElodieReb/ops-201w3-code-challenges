# Print to the terminal screen all active processes ordered by highest CPU time consumption at the top
Get-Process | Sort-Object -Property CPU -Desc

# Print to the terminal screen all active processes ordered by highest Process Identification Number at the top
Get-Process | Sort-Object -Property Id -Desc

# Print to the terminal screen the top five active processes ordered by highest Working Set at the top
Get-Process | Sort-Object -Property WS -Desc

# Start a browser process and have it open https://owasp.org/www-project-top-ten/
# The following command will open the URL in the default browser
Start-Process "https://owasp.org/www-project-top-ten/"

# Start the process Notepad ten times using a for loop
for (($i=0); $i -lt 10; $i++) {
    Start-Process notepad }

# Close all instances of Notepad
Stop-Process -Name "notepad"

# Kill a process by its PID. Choose a process whose termination won't destabilize the system, such as Google Chrome or MS Edge.
# this can be achieved by using Stop-Process or taskkill; for consistency's sake, we'll use Stop-Process
Stop-Process -Id 1820 -force
