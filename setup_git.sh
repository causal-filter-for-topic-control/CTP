
# -----------------------------
# EXPORT SOME VARIABLES FOR USE
# -----------------------------

export TITLE="Low Rank Causal Filters for Topic Controlled Generation"
export GITHUB_USER="causal.filter.for.topic.control"
export EMAIL_ID="yourmailid+$GITHUB_USER@gmail.com"
# Note that gmail ignores all characters beyond the + symbols
export NAME="Low Rank Causal Filters for Topic Controlled Generation"

export KEY="calorf"

# ---------------------
# SETUP THE GITHUB REPO
# ---------------------

# Now we will create an anonymized repo
# 1. Create a new github account using that $EMAIL_ID and $NAME
# 2. Create a repo
# 3. Copy the link for the repo push. $LINK

export LINK="git@github.com:causal-filter-for-topic-control/CTP.git"

# -----------------------
# SETUP THE LOCAL CONFIGS
# -----------------------
# Check that the default name for a branch is main
# git config --global init.defaultBranch main
git init
git config --local user.name "$NAME"
git config --local user.email  $EMAIL_ID

# -------------------
# SETUP A NEW SSH KEY
# -------------------

# Setup new ssh key (save it in ~/.ssh/$KEY)
ssh-keygen -t ed25519 -C "$EMAIL_ID"
# Paste the key generated in the github>settings>SSH and GPG Keys>SSH Keys
cat ~/.ssh/$KEY.pub

# Add the key to the account
git config --add --local core.sshCommand 'ssh -i ~/.ssh/$KEY'
# If the key changes, unset the local git key using
# git config --unset --local core.sshCommand '<<ssh_token_path>>'

# ----------------------
# START THE FIRST COMMIT
# ----------------------

# Run the commands on this file to setup git
git add -A
git commit -m "initialize repo"

git remote add origin $LINK
git push --set-upstream origin main

#Add a license file to your remote from your github
# Pull that into local
git pull
# ---------------------
# NOW THE SETUP IS DONE
# ---------------------