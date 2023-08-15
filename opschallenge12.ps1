# Create a Powershell script that performs the following operations:
# (1) Creates a local file called network_report.txt that holds the contents of an `ipconfig/all` command
# (2) Use `Select-String` to search network_report.txt and return only the IP version 4 address.
# (3) Remove the network_report.txt when you are finished searching it
#
# You must use at least one variable and one function.

function Search-Txt {

$Content = ipconfig /all
Add-Content -Path "C:\Users\Elodie\Desktop\network_report.txt" -Value $Content
Select-String -Path "C:\Users\Elodie\Desktop\network_report.txt" -Pattern 'IPv4 Address'

}

Search-Txt

Remove-Item -Path "C:\Users\Elodie\Desktop\network_report.txt"

# I'm realizing I could have saved some time by setting my path as a variable but oh well
