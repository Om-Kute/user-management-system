#!/bin/bash

while true
do
    echo "=============================="
    echo " Linux User Management System "
    echo "=============================="
    echo "1. Create User"
    echo "2. Delete User"
    echo "3. Create Group"
    echo "4. Add User to Group"
    echo "5. Lock User"
    echo "6. Unlock User"
    echo "7. Change Password"
    echo "8. Show User Info"
    echo "9. Exit"

    read -p "Enter your choice: " choice

    case $choice in

    1)
        read -p "Enter username: " username
        sudo useradd $username
        echo "User created successfully"
        ;;

    2)
        read -p "Enter username: " username
        sudo userdel $username
        echo "User deleted successfully"
        ;;

    3)
        read -p "Enter group name: " groupname
        sudo groupadd $groupname
        echo "Group created successfully"
        ;;

    4)
        read -p "Enter username: " username
        read -p "Enter group name: " groupname
        sudo usermod -aG $groupname $username
        echo "User added to group"
        ;;

    5)
        read -p "Enter username: " username
        sudo passwd -l $username
        echo "User locked"
        ;;

    6)
        read -p "Enter username: " username
        sudo passwd -u $username
        echo "User unlocked"
        ;;

    7)
        read -p "Enter username: " username
        sudo passwd $username
        ;;

    8)
        read -p "Enter username: " username
        id $username
        ;;

    9)
        echo "Exiting..."
        exit
        ;;

    *)
        echo "Invalid option"
        ;;
    esac

done
