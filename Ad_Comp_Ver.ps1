# Install module
Install-Module ImportExcel
# Find all computers in AD with windows 10 in the OS. Select information on the computers and export to excel spreadsheet.
Get-ADComputer -Filter {OperatingSystem -like "Windows 10*"} -Properties * | select Name,DNSHostName,IPv4Address,OperatingSystem, operatingsystemversion | export-excel $env:homepath\desktop\comp_inv.xlsx
