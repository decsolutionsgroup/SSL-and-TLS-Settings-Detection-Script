# SSL-and-TLS-Settings-Detection-Script
 
This script checks the local registry settings for various protocols and frameworks related to SSL and TLS. It provides information about whether these protocols are enabled or disabled, and whether they are set to use strong cryptography.

Requirements:

* Windows operating system
* Administrative privileges

Running the script:

Right-click and run the script as Administrator, or cd and run file from an administrator command prompt.
Output:

The script will display the following information:

* Whether the script has the required administrative permissions
* The status of various SSL and TLS protocols, including SSL 2.0, SSL 3.0, TLS 1.0, and TLS 1.1, for both inbound and outbound connections.
* The status of the .NET Framework configuration for using strong cryptography and system default TLS versions for both v2.0 and v4.0
* The status of the Internet Settings for using secure protocols and system default protocols

Additional notes:

* The script uses color codes to highlight different types of output.
* The script pauses at the end to allow you to review the output.

Disclaimer:

This script is provided for informational purposes only. The author/organization is not responsible for any consequences of using this script.