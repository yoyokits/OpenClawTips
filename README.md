# OpenClaw / ClawdBot Mini Documentation

This is a short guide providing common solutions, such as solving and preventing installation problems.
This guideline is intended for my personal documentation, but you can use it as well with your own risk.

## Important Requirements Before Installation or Updating Settings

Before proceeding, find a reliable LLM provider:

- Use the most powerful LLM model available, such as Claude Opus 4.5 or another high-quality option.
- Using a low-quality LLM may result in numerous errors.
- Once installation and setup of OpenClaw are complete, you can switch to a cheaper or free lower-quality LLM model.
- Prepare your LLM provider and obtain any necessary API keys.
- Settings can be changed later, including switching to local options like Ollama.

Below installation can be run using the script:
https://github.com/yoyokits/OpenClawTips/blob/main/install.sh

## Ubuntu Installation Steps

Follow these steps to install OpenClaw on Ubuntu.

1. Update and upgrade your system packages:

   ```bash
   sudo apt update && sudo apt upgrade -y
   ```

2. Install required dependencies:

   ```bash
   sudo apt install -y curl git build-essential
   ```

3. Install Node.js (version 22 is required; do not use the default Ubuntu installation):

   - Install NVM (Node Version Manager):

     ```bash
     curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
     ```

   - Activate NVM:

     ```bash
     source ~/.bashrc
     ```

   - Install and set Node.js version 22 as default:

     ```bash
     nvm install 22
     nvm use 22
     nvm alias default 22
     ```

   - Verify the installation:

     ```bash
     node -v
     ```

4. Install OpenClaw:

   ```bash
   curl -fsSL https://openclaw.ai/install.sh | bash
   openclaw onboard --install-daemon
   ```

   **Note:** Install with minimal skills enabled. Although standard skills are generally safe, there have been cases where a skill was identified as malware.

5. Initialize OpenClaw:

   - Introduce yourself to OpenClaw (example): "I am Yohanes, I am a software developer, I speak German, English, and Indonesian."
   - Describe your expectations for the assistant (example): "You are smart, you will arrange my schedule and help me to develop software."

## Backup Recommendations

Regularly back up the entire `~/.openclaw` folder. Using Git is recommended for version control and easy reversion of changes in case of failures.

- You can ask OpenClaw to set up a Git repository for the `.openclaw` folder contents.
- Alternatively, set it up manually with these commands:

  ```bash
  cd ~/.openclaw
  git init
  git add .
  git commit -m "Initial commit - OpenClaw config backup"
  ```

Some openclaw specific files can be ignored by git.
[.gitignore](https://github.com/yoyokits/OpenClawTips/blob/main/.gitignore) is the ignored files list created by openclaw

- After updates, if successful, ask OpenClaw to commit the changes.

**Warning:** This system can access all your data, so do not install it on your main computer. Use a dedicated or virtual machine for safety.
