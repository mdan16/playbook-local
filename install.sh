#!/bin/bash
cd `dirname $0`

# Detect OS
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # Ubuntu/Debian
    sudo apt -y update && sudo apt -y upgrade
    sudo apt -y install software-properties-common
    sudo apt-add-repository -y ppa:ansible/ansible
    sudo apt -y update
    sudo apt -y install ansible
elif [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    # Check if Homebrew is installed
    if ! command -v brew &> /dev/null; then
        echo "Installing Homebrew..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi

    # Install Ansible
    brew install ansible
else
    echo "Unsupported OS: $OSTYPE"
    exit 1
fi
