# IMPORTANT: These are mock examples for demonstration only
# DO NOT use real tokens, even encoded ones, in demonstrations

# To demonstrate how a Base64-encoded token might look in a file:

# Example 1: Configuration file with embedded encoded token
cat > config.json << 'EOF'
{
  "api_config": {
    "endpoint": "https://api.github.com/v3",
    "token": "Z2hwX0VYQU1QTEVYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFg=",
    "timeout": 30
  }
}
EOF

# Example 2: Script with hardcoded encoded credentials
cat > deploy.sh << 'EOF'
#!/bin/bash
# Deployment script

# Set API credentials
API_TOKEN="Z2hvX0VYQU1QTEVYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFg="

# Make API calls
curl -H "Authorization: Bearer $(echo $API_TOKEN | base64 --decode)" https://api.github.com/user/repos
EOF

# Example 3: Environment setup with encoded tokens
cat > .env.development << 'EOF'
# Development environment variables
API_URL=https://api.github.com
USER_TOKEN=Z2h1X0VYQU1QTEVYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFg=
SERVER_TOKEN=Z2hzX0VYQU1QTEVYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFg=
DEBUG=true
EOF

# Example 4: Log file that accidentally captured encoded tokens
cat > debug.log << 'EOF'
[2025-03-10 14:32:15] DEBUG: Initializing API connection
[2025-03-10 14:32:16] DEBUG: Using token: Z2hwX0VYQU1QTEVYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFg=
[2025-03-10 14:32:17] INFO: Connection established
[2025-03-10 14:32:18] ERROR: Rate limit exceeded
[2025-03-10 14:32:20] DEBUG: Trying alternate token: Z2hvX0VYQU1QTEVYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFhYWFg=
EOF

echo "Created example files containing Base64-encoded tokens for demo purposes."
echo "REMEMBER: These examples use mock tokens. Never use real tokens in demonstrations."
