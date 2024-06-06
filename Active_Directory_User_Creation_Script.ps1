# Description: Active Directory User Creation Script
# Autor: Dixel - https://github.com/Dixel1
# Version: [1.0.0] - 2024-06-06


# Import the Active Directory module
Import-Module ActiveDirectory

# Specify the path to the CSV file
$csvFilePath = "path_to_your_csv_file.csv"

# Import the CSV file
$csvFile = Import-Csv -Path $csvFilePath

# Initialize a counter
$userCount = 0

# Loop through each row in the CSV file
foreach ($row in $csvFile) {
    # Get the user details from the CSV file
    $firstName = $row.FirstName
    $lastName = $row.LastName
    $username = $row.Username
    $password = ConvertTo-SecureString -AsPlainText $row.Password -Force

    # Create a new user in Active Directory
    New-ADUser -Name "$firstName $lastName" -GivenName $firstName -Surname $lastName -UserPrincipalName $username -SamAccountName $username -AccountPassword $password -Enabled $true

    # Increment the counter
    $userCount++
}

# Print a completion message
Write-Host "All $userCount users has been successfully created."
