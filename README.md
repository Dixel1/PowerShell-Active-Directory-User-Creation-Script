# Active Directory User Creation Script

This PowerShell script creates users in Active Directory from a CSV file.

## Prerequisites

- The script requires the Active Directory module for PowerShell. You can import this module using the command `Import-Module ActiveDirectory`.
- You need to have the necessary permissions to create users in Active Directory.

## Usage

1. Replace `"path_to_your_csv_file.csv"` in the script with the actual path to your CSV file.
2. Run the script in PowerShell.

## CSV File Format

The CSV file should have the following columns:

- `FirstName`: The first name of the user.
- `LastName`: The last name of the user.
- `Username`: The username for the user.
- `Password`: The password for the user.

Here is an example of what the CSV file might look like:

`FirstName,LastName,Username,Password John,Doe,jdoe,Password123 Jane,Doe,jane.doe,Password456`

_____________________________________

## IMPORTANT

- The `-Enabled $true` flag will enable the account immediately upon creation. If you want to create the account as disabled (for example, if you want to do some additional setup before the account is active), you can change this to `-Enabled $false`.
- Be careful with handling passwords. In this script, passwords are assumed to be in plain text in the CSV file, which is not secure. In a real-world scenario, you should handle passwords in a secure manner.
- This script is a basic example and might need to be adjusted to meet your specific needs and environment. Always test scripts in a safe and non-production environment first.
