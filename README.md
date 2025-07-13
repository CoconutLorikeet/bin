# **bin \- Your Essential Script Collection**

Welcome to the bin repository\! This collection houses a variety of utility scripts designed to streamline common tasks, particularly those related to **GPG**, **SSH**, **Git**, and **MongoDB**. These scripts are meant to be placed in your system's PATH (e.g., \~/bin) for easy access from anywhere in your terminal.

## **🚀 Getting Started**

### **Prerequisites**

Before using these scripts, ensure you have the necessary tools installed:

* **Git**: For cloning the repository.
* **GnuPG**: For GPG-related scripts (export-gpg.sh, list-gpg.sh, generate-gpg.sh, tell-git-about-gpg-signing-key.sh).
* **OpenSSH**: For SSH-related scripts (generate-ssh).
* **MongoDB**: If you plan to use start\_mongodb.sh.

### **Installation**

1. **Clone the Repository**:
   git clone https://github.com/your-username/bin.git \~/bin

   *(Replace your-username with your actual GitHub username or the repository owner's username.)*
2. Add to PATH (Recommended):
   To make these scripts callable from any directory, add the bin directory to your system's PATH environment variable.
   * **For Bash/Zsh users (add to \~/.bashrc or \~/.zshrc):**
     echo 'export PATH="$HOME/bin:$PATH"' \>\> \~/.bashrc
     source \~/.bashrc \# Or source \~/.zshrc

   * **For Fish shell users (add to \~/.config/fish/config.fish):**
     set \-gx PATH $HOME/bin $PATH

   * After adding to PATH, restart your terminal or source your shell's configuration file.
3. Make Scripts Executable:
   Navigate into the cloned directory and make all scripts executable:
   cd \~/bin
   chmod \+x \*.sh generate-ssh

## **📚 Script Reference & Examples**

Here's a detailed breakdown of each script with practical examples:

### **🔐 export-gpg.sh**

Exports your GPG public and private keys to a specified file. This is crucial for backing up your keys or transferring them to a new machine.
**Usage:**
export-gpg.sh \<key\_id\> \<output\_file\_name\>

Example:
To export the GPG key with ID 0xYOURKEYID to a file named my\_gpg\_keys.asc in your home directory:
export-gpg.sh 0xYOURKEYID \~/my\_gpg\_keys.asc

*You will be prompted for your GPG passphrase to export the private key.*

### **📝 list-gpg.sh**

Lists all GPG keys (public and private) currently available on your system. Useful for quickly identifying key IDs and their details.
**Usage:**
list-gpg.sh

**Example:**
list-gpg.sh

**Expected Output (example):**
/home/user/.gnupg/pubring.kbx
\-----------------------------
pub   rsa3072 2023-01-15 \[SC\]
      YOURKEYIDHERE
uid           \[ultimate\] John Doe \<john.doe@example.com\>
sub   rsa3072 2023-01-15 \[E\]

### **✨ generate-gpg.sh**

Guides you through the process of generating a new GPG key pair. This script simplifies the gpg \--full-generate-key command with common recommendations.
**Usage:**
generate-gpg.sh

**Example:**
generate-gpg.sh

*The script will prompt you for details like key type, key size, expiration date, your name, email, and a passphrase.*

### **🍃 start\_mongodb.sh**

A simple script to start your MongoDB daemon. Assumes a default data directory or allows specifying one.

**Notes** Save your `MONGODB_DB_PATH` & `MONGODB_LOG_PATH` inside `.bash_profile`.

**Usage:**
start\_mongodb.sh

Example 1 (Default Data Directory):
If your MongoDB data directory is at /data/db (common default):
start\_mongodb.sh

*You might need appropriate permissions to write to the data directory.*

### **🔑 generate-ssh**

Generates a new SSH key pair (public and private keys) and saves them to the standard \~/.ssh directory. It uses ssh-keygen with common secure defaults.
**Usage:**
generate-ssh

**Example 1 (Default Name id\_rsa):**
generate-ssh

*This will generate \~/.ssh/id\_rsa and \~/.ssh/id\_rsa.pub. You will be prompted for a passphrase.*

### **✍️ tell-git-about-gpg-signing-key.sh**

Configures your Git global settings to use a specific GPG key for signing commits. This adds an extra layer of trust and verification to your Git history.
**Usage:**
tell-git-about-gpg-signing-key.sh

Example:
To configure Git to use the GPG key with ID 0xYOURKEYID for signing commits:
tell-git-about-gpg-signing-key.sh

*After running this, all your future Git commits will be signed by default. You can verify this with git config \--global user.signingkey.*

## **❓ Troubleshooting**

* **Permissions Denied**: If you encounter "Permission denied" errors when running scripts, ensure they are executable: chmod \+x \<script\_name\>.
* **Command Not Found**: If your shell says "command not found", verify that the bin directory is in your PATH and that you have restarted your terminal or sourced your shell configuration file.
* **GPG Passphrase Prompts**: GPG operations often require your passphrase. Ensure you enter it correctly. If you forget it, you might need to generate a new key.
* **MongoDB Data Directory**: Ensure the directory specified for MongoDB (start\_mongodb.sh) exists and that you have write permissions to it.

## **🤝 Contributing**

We welcome contributions\! Please see the CONTRIBUTING.md file for guidelines on how to submit bug reports, feature requests, and pull requests.

## **📄 License**

This project is licensed under the MIT License \- see the LICENSE file for details.

## **📧 Contact**

If you have any questions or suggestions, feel free to open an issue on this repository or contact the maintainer.
