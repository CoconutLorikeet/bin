#!/bin/bash

# Prompt the user
read -r -p "Enter your your e-mail address: " email

printf "Generating a new SSH key\n"

ssh-keygen -t ed25519 -C "$email"
