


export TITLE="Low Rank Causal Filters for Topic Controlled Generation"
export GITHUB_USER="causal.filter.for.topic.control"
export EMAIL_ID="yourmailid+$GITHUB_USER@gmail.com"
# Note that gmail ignores all characters beyond the + symbols
export NAME="Low Rank Causal Filters for Topic Controlled Generation"

export KEY="calorf"

# Now we will create an anonymized repo
# 1. Create a new github account using that $EMAIL_ID and $NAME
# 2. Create a repo
# 3. Copy the link for the repo push. $LINK

export LINK="git@github.com:causal-filter-for-topic-control/CTP.git"

# Setup Local Configs
git init
git config --local user.name "$NAME"
git config --local user.email  $EMAIL_ID

# Setup new ssh account (save it in ~/.ssh/$KEY)
ssh-keygen -t ed25519 -C "$EMAIL_ID"
# Paste the key generated in the github>settings>SSH and GPG Keys>SSH Keys
cat ~/.ssh/$KEY.pub

# Add the key to the account
git config --add --local core.sshCommand 'ssh -i ~/.ssh/$KEY.pub'
# If changes, unset the local git key using
# git config --unset --local core.sshCommand '<<ssh_token_path>>'

# Run the commands on this file to setup git
git add -A
git commit -m "initialize repo"

# 5. git remote add origin $link