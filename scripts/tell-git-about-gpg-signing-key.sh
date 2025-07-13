#!/bin/bash

# Prompt the user
read -r -p "Enter your your GPG key ID: " GPGKeyID

git config --global user.signingkey "$GPGKeyID"
git config --global commit.gpgsign true
git config --global tag.gpgSign true
