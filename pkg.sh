#!/bin/sh
# Get the list of installed packages
paru -Qqe | grep -vE '^(chaotic-keyring|chaotic-mirrorlist)' > installed_packages.txt

# Check if the packagelist file exists
if [ -f packagelist.txt ]
then
    # Get the list of packages that are not already in the packagelist file
    new_packages=$(grep -Fxvf packagelist.txt installed_packages.txt)

    if [ -z "$new_packages" ]
    then
        echo "All installed packages are already in packagelist.txt"
    else
        echo "Adding new packages to packagelist.txt"
        echo "$new_packages" >> packagelist.txt
    fi
else
    # Create the packagelist file and add the list of installed packages to it
    echo "Creating packagelist.txt"
    cp installed_packages.txt packagelist.txt
fi
