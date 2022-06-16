#! /bin/bash

# Supress cloudshell python3 default nonsense
if [ ! -e ~/.cloudshell ]
then
    mkdir ~/.cloudshell
    
fi

if [ ! -e ~/.cloudshell/python3-default-message ]
then
    touch ~/.cloudshell/python3-default-message
    echo "Python3 default warning now supressed"
fi

if [ ! -e  ~/.cloudshell/pip3-default-message ]
then
    touch ~/.cloudshell/pip3-default-message
    echo "Pip3 default warning now supressed"
fi

# set up the correct path for python installs
echo "export PATH=~/.local/bin:$PATH" >> ~/.bashrc
echo "Python application added to path"

# Install csvcubed
pip install csvcubed

echo "csvcubed is now ready for your use"

bash -l