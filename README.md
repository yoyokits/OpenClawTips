# OpenClaw/ClawdBot Mini Documentation
This is short documentation for common steps like installation problem solving and prevention

Important requirement during installation/update setting:
Find good LLM provider
- Use as powerfull LLM model that you can get like Claude Opus 4.5 or other that you think powerfull
- Using low quality LLM will produce many error
- After installation and setting up OpenClaw are done, then you can change to cheap/free lower quality LLM model
- Prepare LLM provider

Ubuntu Installation required:
1. sudo apt update && sudo apt upgrade -y
2. sudo apt install -y curl git build-essential
3. Nodejs with certain version:
4. 
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
   
5. Install OpenClaw
   curl -fsSL https://openclaw.ai/install.sh | bash
   openclaw onboard --install-daemon

   Because this system can access all data
