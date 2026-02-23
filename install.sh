#!/bin/bash

# This script automates the installation of OpenClaw on Ubuntu.
# Run it with sudo where necessary, but be cautious as it installs software and modifies your system.
# Warning: This system can access all your data, so do not install it on your main computer. Use a dedicated or virtual machine.
# Important Notice:
# Please be advised that this software involves potential risks, including access to sensitive data.
# We strongly recommend proceeding with caution, using it on a non-primary device, and accepting full responsibility for any outcomes.

# Update and upgrade system packages
sudo apt update && sudo apt upgrade -y

# Install required dependencies
sudo apt install -y curl git build-essential

# Install NVM (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

# Activate NVM (source the bashrc to make nvm available in this script)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Install and set Node.js version 22
nvm install 22
nvm use 22
nvm alias default 22

# Verify Node.js version (optional)
node -v

# Install OpenClaw
curl -fsSL https://openclaw.ai/install.sh | bash
openclaw onboard --install-daemon

# Note: Initialization requires user input. After running this script, interact with OpenClaw manually:
# - Introduce yourself, e.g., "openclaw chat" or similar (check OpenClaw docs for exact command).
# Example: Tell OpenClaw: "I am Yohanes, I am a software developer, I speak German, English, and Indonesian."
# - Describe expectations: "You are smart, you will arrange my schedule and help me to develop software."

# Set up Git backup for ~/.openclaw
if [ -d "$HOME/.openclaw" ]; then
  cd "$HOME/.openclaw"
  git init
  git add .
  git commit -m "Initial commit - OpenClaw config backup"
else
  echo "Warning: ~/.openclaw directory not found. Run initialization first."
fi

# After updates, you can manually commit changes or ask OpenClaw to do so.
echo "Installation complete. Remember to set up your LLM provider and API keys manually."
echo "For backups after changes, use Git in ~/.openclaw or ask OpenClaw."
