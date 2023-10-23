#!/bin/bash

# This script installs python2
sudo apt update
sudo apt install python3 --yes
sudo ln -s /usr/bin/python3 /usr/local/bin/python

# Download the dlv
FILE_URL="https://www.dlvsystem.it/files/dlv.x86-64-linux-elf-static.bin"
TARGET_FILE_PATH="./dlv.x86-64-linux-elf-static.bin"
if [ ! -f "$TARGET_FILE_PATH" ]; then
    # If the file doesn't exist, download it
    wget "$FILE_URL" -O "$TARGET_FILE_PATH"
else
    # If the file exists, print a message and do nothing
    echo "File already exists. No action taken."
fi

# Change permissions to make the binary executable
echo "Setting execute permissions for the DLV binary"
chmod +x ./dlv.x86-64-linux-elf-static.bin

# Create a symbolic link to the binary
echo "Creating symbolic link for the DLV binary"
sudo unlink /usr/local/bin/dlv
sudo ln -s /workspaces/Logic_Programming_Playground/dlv.x86-64-linux-elf-static.bin /usr/local/bin/dlv

# Install SWI-Prolog
sudo apt-get install swi-prolog --yes

# Install Emacs
sudo apt-get install emacs --yes

# Install clingo and graphviz using conda
echo "Installing clingo and graphviz"
sudo apt install graphviz --yes
sudo apt install gringo --yes

# Install pip
sudo apt-get install python3-pip --yes
sudo apt-get install sqlite3

# Install logica
pip3 install logica
pip3 install jupyterlab
pip3 install pandas
pip3 install ipython-sql
pip3 install graphviz

echo "Setup completed successfully"