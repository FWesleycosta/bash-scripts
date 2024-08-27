#!/bin/bash

# Description: This script resets the password of a user in a cognito user pool
# Author: Francisco Wesley
# Date: 2024-08-27
# Example:
#     chmod +x reset-pass-cognito.sh
#     sh reset-pass-cognito.sh
# Version: 1.0

# Exit immediately if a command exits with a non-zero status
set -e

# Function to validate the aws cli
validate_input() {
  if [ -z "$1" ]; then
    echo "Error: $2 cannot be empty"
    exit 1
  fi
}

echo "-----------------------------"
echo "Resetting Password cognito..."
echo "-----------------------------"

# Set the user pool id
read -p "Enter the user pool id: " USER_POOL_ID
validate_input "$USER_POOL_ID" "User pool id"

# Set the username
read -p "Enter the username: " USERNAME
validate_input "$USERNAME" "Username"

# Set the password
read -s -p "Enter the new password: " PASSWORD
validate_input "$PASSWORD" "Password"

echo
echo "Attempting to reset the password of the user $USERNAME in the user pool $USER_POOL_ID"

# Reset the password
if aws cognito-idp admin-set-user-password \
  --user-pool-id "$USER_POOL_ID" \
  --username "$USERNAME" \
  --password "$PASSWORD" \
  --permanent; then
  echo "Password reset successfully"
else
  echo "Failed to reset the password"
fi

echo "-----------------------------"
echo "Password reset completed"
echo "-----------------------------"
