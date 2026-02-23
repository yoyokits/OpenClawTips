# OpenClaw/ClawdBot Mini Documentation
This is short documentation for common solutions like installation problem solving and prevention

Important requirement before installation/update settings:
Find good LLM provider
- Use as powerfull LLM model that you can get like Claude Opus 4.5 or other that you think powerfull
- Using low quality LLM will produce many error
- After installation and setting up OpenClaw are done, then you can change to cheap/free lower quality LLM model
- Prepare LLM provider, get key if necessary
- Later can be changed, even for local like using Ollama

Ubuntu Installation required:
1. sudo apt update && sudo apt upgrade -y
2. sudo apt install -y curl git build-essential
3. Nodejs with certain version:
4. Install Node.js version 22, must be 22, therefore cannot use default ubuntu installation, use from repository instead
   Install NVM:
   curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
   
   Activate:
   source ~/.bashrc
   
   Install Node.js 22:
   nvm install 22
   nvm use 22
   nvm alias default 22

   Verify:
   node -v
   
6. Install OpenClaw
   curl -fsSL https://openclaw.ai/install.sh | bash
   openclaw onboard --install-daemon
   - Install with minimal skill installed, because eventhough the skills are standard, there was a case that a skill actually a maleware.

7. OpenClaw initialization:
   - Tell OpenClaw who are you: I am Yohanes, I am a software developer, I speak German, English and Indonesian.
   - Tell OpenClaw what do you imagine the assistance: You are smart, you will arrange my schedule and help me to develop software
8. Backup the whole home/.openclaw folder regularly, using git is the best to enable reverting the change if there is a failure.
   - You can ask OpenClaw to setup git repository for .openclaw folder contents.
   - Or write these command line to setup git:
     cd ~/.openclaw
     git init
     git add .
     git commit -m "Initial commit - OpenClaw config backup"
   - You can ask OpenClaw to commit the change if there is update and the update is successfully

   Because this system can access all data, therefore don't use your main computer to install it.
