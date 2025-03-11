# GitHub Base64-Encoded Secret Scanning Demo

## Demo Overview

This demonstration showcases GitHub's enhanced secret scanning capabilities, specifically the new detection of Base64-encoded GitHub tokens including:
- GitHub personal access tokens
- GitHub OAuth access tokens 
- GitHub user to server tokens
- GitHub server to server tokens

## Demo Setup

### Prerequisites
- A GitHub repository with secret scanning enabled (available on public repositories and on private repositories with GitHub Advanced Security)
- Administrator access to the repository

## Demo Script

### 1. Introduction 

"Today we're demonstrating GitHub's enhanced secret scanning capabilities, specifically the new ability to detect Base64-encoded tokens. This is an important security improvement because attackers often use encoding to try to bypass security controls."

### 2. Understanding the Problem

#### Example: How developers might accidentally commit encoded secrets

```bash
# A developer might include a Base64-encoded token in a configuration file
# thinking it's "hidden" because it's not in plain text

# Example config.json file
{
  "api": {
    "endpoint": "https://api.github.com",
    "credentials": "Z2hwX3NhbXBsZXRva2VuMTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMjM0NTY3ODkwMTI=",
    "timeout": 30
  }
}
```

"What appears to be a harmless encoded string is actually a GitHub personal access token that has been Base64-encoded. Previously, this might have gone undetected, but GitHub's enhanced scanning can now identify this as a security risk."

### 3. Live Demonstration 

#### Step 1: Create a test repository with secret scanning enabled

"I've created a test repository with secret scanning enabled. Let's see how the new Base64 detection works."

#### Step 2: Create examples of Base64-encoded tokens

"For demonstration purposes, I've created examples of Base64-encoded tokens. In a real scenario, we would NEVER share actual tokens, even in encoded form."

**Example file: encoded-examples.txt**
```
# IMPORTANT: These are NOT real tokens - they are mock examples for demonstration only
# The format matches what GitHub would detect, but these are fabricated examples

# Base64-encoded GitHub PAT (original format: ghp_*)
Z2hwX3NhbXBsZXRva2VuMTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMjM0NTY3ODkwMTI=

# Base64-encoded GitHub OAuth token (original format: gho_*)
Z2hvX3NhbXBsZW9hdXRodG9rZW4xMjM0NTY3ODkwMTIzNDU2Nzg5MDEyMzQ1Njc4OQ==

# Base64-encoded GitHub user-to-server token (original format: ghu_*)
Z2h1X3NhbXBsZXVzZXJ0b3NlcnZlcnRva2VuMTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMg==

# Base64-encoded GitHub server-to-server token (original format: ghs_*)
Z2hzX3NhbXBsZXNlcnZlcnRvc2VydmVydG9rZW4xMjM0NTY3ODkwMTIzNDU2Nzg5MA==
```

#### Step 3: Commit the file to the repository

"Let's commit this file to our repository and see what happens."

#### Step 4: View the secret scanning alerts

"Now, let's navigate to the 'Security' tab in our repository and check the 'Secret scanning' section."

_[Show the resulting alerts in the GitHub UI]_

"As you can see, GitHub has detected these Base64-encoded tokens and flagged them as security risks, even though they're not in plain text."

### 4. Remediation Process

"When GitHub detects these encoded secrets, it follows the same alerting and remediation process as with plain text secrets:"

1. Repository administrators receive alerts
2. The secret issuer (GitHub in this case) is notified
3. The secret can be revoked directly from the alert
4. Audit logs track the detection and remediation

"Let's walk through the remediation process for one of these alerts."

_[Demonstrate the remediation workflow]_

### 5. Best Practices 

"To avoid these issues in the first place, developers should follow these best practices:"

1. Use environment variables for secrets
2. Utilize GitHub's built-in secrets management
3. Implement pre-commit hooks to catch secrets before they're committed
4. Never encode secrets as a security measure - proper secret management is key
5. Regularly audit repositories for potential leaked secrets

## Additional Resources

- [GitHub Secret Scanning Documentation](https://docs.github.com/en/code-security/secret-scanning/about-secret-scanning)
- [Managing GitHub Secrets](https://docs.github.com/en/actions/security-guides/encrypted-secrets)
- [GitHub Advanced Security](https://docs.github.com/en/get-started/learning-about-github/about-github-advanced-security)

## Mock Screenshots for Presentation

1. Secret scanning alert dashboard showing detected Base64-encoded tokens
2. Alert details for a specific detected token
3. Remediation workflow interface
4. Before/after comparison showing detection improvements
