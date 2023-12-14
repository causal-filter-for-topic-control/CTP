# run this file as "cmd < sync_code.sh" in cmd
# or "./sync_code.sh" on any linux based terminal.

# Switch to the right profile

export KEY="calorf"
export GITHUB_USER="causal.filter.for.topic.control"
export EMAIL_ID="yourmailid+$GITHUB_USER@gmail.com"

git config --local user.name "Low Rank Causal Filters for Topic Controlled Generation"
git config --local user.email  $EMAIL_ID

# Add the correct key to the github account
git config --add --local core.sshCommand 'ssh -i ~/.ssh/$KEY'

# Add all changes, commit with the provided message, and push
git add -A

git commit -m "updates"
git commit -m 'updates'

# Set the upstream as origin/main the first time you push.
# git push --set-upstream origin main
# After that, use the below command.
git push
