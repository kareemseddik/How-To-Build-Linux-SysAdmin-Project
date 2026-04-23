# Linux SysAdmin Project #
-------------------------------

# Description:- 
- This project simulates a simple company to manage:
   1- Users. 
   2- Groups.
   3- File and directory Permissions.
- The goal is to control access so each department works within its own environment.
 
# Users & Departments:-
- Ali       (HR).
- Ahmed     (HR).
- Mohamed   (IT).
- Omar      (IT).
- Sara      (Sales).
- Menna     (Sales).

# Directories Structure:-
- /company/HR
- /company/IT
- /company/Sales

# Permissions:-
- Each department has its own directory.
- Users are added to their own department group.
- Permissions are set to restrict access between departments. 
- Adding special permissions ( Setgid - Sticky bit )

# Command Used:- 
- useradd.
- groupadd.
- usermod.
- chmod.
- chown.
- touch. 
- mkdir.
- echo.
- for loop ( Bash Scripting ).
- chpasswd.

# Features:- 
- Check if groups already exist.
- Check if users already exist before creating them.
- Run script multiple times safely ( idempotent script ).
- Automatically creates directories and assigns permissions. 
- Assigns users to the correct group.

# Notes:- 
- Passwords are reset every time running the script.
- The script must be run with root privileges ( sudo ).

# How to run:- 
- Make the script  executable.
    chmod +x setup.sh

- Then run the file.
    sudo ./setup.sh

# Goals:- 
- Automation using bash scripting.
- Managing users and groups.
- Setting permissions for files and directories.

# Author:- 
Kareem Seddik
