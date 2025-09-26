# DB Quickinstall ( ODBC Driver, SQLCMD) 
# Define the DSN name and driver, servername
$dsnName = "Database"
$driverName = "ODBC Driver 17 for SQL Server"
$computerName = $env:COMPUTERNAME
$serverName = "$computerName\SQLEXPRESS"

# Define the DSN properties
$dsnProperties = @(
    "Server=$serverName",
    "Trusted_Connection=Yes"
)

# Add the ODBC DSN
Add-OdbcDsn -Name $dsnName -DriverName $driverName -DsnType System -Platform "64-bit" -SetPropertyValue $dsnProperties