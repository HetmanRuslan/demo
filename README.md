# Pre-commit Hook with Gitleaks

This repository includes a pre-commit hook script that uses Gitleaks to check for secrets in the code before allowing commits.

## How to Enable

To enable the Gitleaks pre-commit check, run the following command:

```sh
git config hooks.gitleaks-enabled true
To disable the check, run:

sh
Copy code
git config hooks.gitleaks-enabled false
Installation
The pre-commit script automatically installs Gitleaks if it is not found on your system. It supports both Linux and macOS.

Usage
Simply stage your changes and commit as usual:

sh
Copy code
git add <files>
git commit -m "Your commit message"
If any secrets are detected, the commit will be rejected with an appropriate message.

Example
Testing the script with a file containing a Telegram bot token:

sh
Copy code
echo "123456789:ABCDEFGHIJKLMNOPQRSTUVWXYZ" > telegram_token.txt
git add telegram_token.txt
git commit -m "Test commit with Telegram bot token"
If secrets are detected, you will see a message indicating that the commit was rejected.
