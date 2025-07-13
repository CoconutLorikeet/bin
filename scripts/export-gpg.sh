#!/bin/bash

# Prompt the user
read -p "Enter your your GPG key ID: " GPGKeyID

gpg --armor --export $GPGKeyID
# Prints the GPG key ID, in ASCII armor format

