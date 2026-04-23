#!/bin/bash

set -e

#Check Root
if [ "$EUID" -ne 0 ];then
   echo "please run as root, or user has root privileges"
   exit 1
fi

#Create Groups
for group in hr it sales ; do getent group $group &> /dev/null || groupadd $group ; done

#Create Users
for user in ali ahmed mohamed omar sara menna ; do id $user &> /dev/null || useradd -m -s /bin/bash $user ; done

#Adding Users In Groups
for user in ali ahmed ; do usermod -aG hr $user ; done
for user in mohamed omar ; do usermod -aG it $user ;done
for user in sara menna ; do usermod -aG sales $user ; done

#Create Passwords For Users
echo -e "ali:11\nahmed:22\nmohamed:33\nomar:44\nsara:55\nmenna:66" | chpasswd

#Create Directories In / Directory
mkdir -p /company/{HR,IT,Sales}

#Change The Directories's Group Owner
chown :hr /company/HR/ ; chown :it /company/IT/ ; chown :sales /company/Sales/

#Change The Permissions For Directories And Adding Special Permissions
chmod 3770 /company/HR/ ; chmod 3770 /company/IT/ ; chmod 3770 /company/Sales/

#Create Files And Dierctories For Usres
touch /company/HR/file1 ; touch /company/HR/file2 ; touch /company/IT/file3
touch /company/IT/file4 ; touch /company/Sales/file5 ; touch /company/Sales/file6
mkdir -p /company/HR/dir1 ; mkdir -p /company/HR/dir2 ; mkdir -p /company/IT/dir3
mkdir -p /company/IT/dir4 ; mkdir -p /company/Sales/dir5 ; mkdir -p /company/Sales/dir6
echo "Hello, my name is ali and this is kareem's project " > /company/HR/file1
echo "Hello, my name is ahmed and this is kareem's project " > /company/HR/file2
echo "Hello, my name is mohamed and this is kareem's project " > /company/IT/file3
echo "Hello, my name is omar and this is kareem's project " > /company/IT/file4
echo "Hello, my name is sara and this is kareem's project " > /company/Sales/file5
echo "Hello, my name is menna and this is kareem's project " > /company/Sales/file6

#Change Files's Owner
chown ali:hr /company/HR/file1 ; chown ahmed:hr /company/HR/file2
chown mohamed:it /company/IT/file3 ; chown omar:it /company/IT/file4
chown sara:sales /company/Sales/file5 ; chown menna:sales /company/Sales/file6

#Change Directories's Owner
chown ali:hr /company/HR/dir1 ; chown ahmed:hr /company/HR/dir2
chown mohamed:it /company/IT/dir3 ;  chown omar:it /company/IT/dir4
chown sara:sales /company/Sales/dir5 ; chown menna:sales /company/Sales/dir6

#The End
echo "Thank you for installing my projrct and wish it liked you!"