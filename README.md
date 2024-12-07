Operating System Verification Tool via Ping :

This command-line tool allows you to test the accessibility of a machine on the network using the ping command. Based on the ping response, it determines the operating system of the target machine (Windows or Linux) and displays the result in color.

Features :
- Accessibility Check: Sends a ping to the specified IP address.
- Operating System Detection: Indicates whether the operating system is Windows or Linux based on the TTL value.
- Windows Firewall Management: If no response is received, it displays a message indicating a possible presence of a firewall.
- Colored Messages: Results are displayed in color for better readability.

Prerequisites :
A Unix/Linux system with Bash installed.
The ping command must be available on the system.

Installation :

Clone the repository
git clone https://github.com/hackAahmed/TestOS.git

cd TestOS

Make the script executable

chmod +x TestOS.sh

Usage :
To use the tool, execute the following command in the terminal:

./TestOS.sh -s <IP_ADDRESS>

or

bash TestOS.sh -s <IP_ADDRESS>

Replace <IP_ADDRESS> with the IP address of the machine you want to test. For example:


./TestOS.sh -s 192.168.1.1

Options :

-s <IP_ADDRESS>: Specifies the IP address of the target machine.
