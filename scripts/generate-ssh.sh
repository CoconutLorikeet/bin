#!/bin/bash

# Prompt the user
read -p "Enter your your e-mail address: " email

echo "Generating a new SSH key\n"

ssh-keygen -t ed25519 -C "$email"

