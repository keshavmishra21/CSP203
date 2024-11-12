#!/bin/bash

welcome_screen() {
    echo "**** Welcome to My shellATM ****"
    echo "**** Press any key to continue ****"
    read -n 1 -s
}

authenticate_user() {
    while true; do
        echo -e "\nEnter your Card Number (format: xxxx xxxx xxxx xxxx):"
        read -r card_number
        echo "Enter your Password:"
        read -r password

        if grep -q "$card_number, $password" Credentials.txt; then
            echo "Authentication successful!"
            account_line=$(grep "$card_number" Account.txt)
            account_name=$(echo "$account_line" | cut -d',' -f1)
            email=$(echo "$account_line" | cut -d',' -f3)
            balance=$(echo "$account_line" | cut -d',' -f4)
            return 0
        else
            echo "Invalid card number or password. Please try again."
        fi
    done
}

withdraw_cash() {
    echo "Enter amount to withdraw:"
    read -r amount
    if ! [[ "$amount" =~ ^[0-9]+$ ]]; then
        echo "Invalid amount. Please enter a non-negative number."
        return
    fi

    if [ "$amount" -gt "$balance" ]; then
        echo "Insufficient balance."
    else
        balance=$((balance - amount))
        update_account
        echo "Withdrawal successful. Updated balance: $balance"
    fi
}

deposit_cash() {
    echo "Enter amount to deposit:"
    read -r amount
    if ! [[ "$amount" =~ ^[0-9]+$ ]]; then
        echo "Invalid amount. Please enter a non-negative number."
        return
    fi

    balance=$((balance + amount))
    update_account
    echo "Deposit successful. Updated balance: $balance"
}

update_account() {
    sed -i '' "s/$card_number, $email, [0-9]\+/$card_number, $email, $balance/" Account.txt
}

change_email() {
   echo "Enter new email address:"
    read -r new_email
    if ! [[ "$new_email" =~ ^[a-zA-Z][a-zA-Z0-9]*@[a-z]+\.[a-z]+\.[a-z]+$ ]]; then
        echo "Invalid email format. Ensure the username starts with an alphabet and the domain is in the format string.string.string."
    else
        sed -i '' "s/\($card_number, \)[^,]*,/\1$new_email,/" Account.txt
        email=$new_email
        echo "Email updated successfully."
    fi
}

main_menu() {
    while true; do
        echo -e "\nWelcome $account_name"
        echo "1. Withdraw cash"
        echo "2. Deposit cash"
        echo "3. Settings"
        echo "4. Exit"
        read -r choice

        case $choice in
            1) withdraw_cash ;;
            2) deposit_cash ;;
            3) change_email ;;
            4) 
                echo "Thank you for using shellATM. Goodbye!"
                exit 0
                ;;
            *) echo "Invalid choice. Please select an option from 1 to 4." ;;
        esac

        echo -e "\nReturning to the welcome screen..."
        welcome_screen
        authenticate_user
    done
}

while true; do
    welcome_screen
    authenticate_user
    main_menu
done
