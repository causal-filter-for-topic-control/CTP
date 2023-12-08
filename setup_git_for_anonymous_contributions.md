# Setup Github Repo for Anonymous Contributions

---

### 1. EXPORT SOME VARIABLES FOR USE

```bash
export TITLE="SOME TITLE"
export GITHUB_USER="github-user"
export EMAIL_ID="yourmailid+$GITHUB_USER@gmail.com"
# Note: Gmail ignores all characters beyond the '+' symbol
export NAME="EXTENDED TITLE"
export KEY="keyname-for-github"
```

### 2. SETUP THE GITHUB REPO

Follow these steps to create an anonymized GitHub repository:

1. Create a new GitHub account using `$EMAIL_ID` and `$NAME`.
2. Create a new repository.
3. Copy the link for the repository push. `$LINK`.

```bash
export LINK="git@github.com:$GITHUB_USER/REPONAME.git"
```

### 3. SETUP THE LOCAL CONFIGS

Ensure that the default name for a branch is `main`.

```bash
git init
git config --local user.name "$NAME"
git config --local user.email $EMAIL_ID
```

### 4. SETUP A NEW SSH KEY

Set up a new SSH key (save it in `~/.ssh/$KEY`):

```bash
ssh-keygen -t ed25519 -C "$EMAIL_ID"
# Paste the key generated in GitHub > Settings > SSH and GPG Keys > SSH Keys
cat ~/.ssh/$KEY.pub
```

Add the key to the account:

```bash
git config --add --local core.sshCommand 'ssh -i ~/.ssh/$KEY'
# If the key changes, unset the local git key using
# git config --unset --local core.sshCommand '<<ssh_token_path>>'
```

### 5. START THE FIRST COMMIT

Run the following commands to set up git:

```bash
git add -A
git commit -m "initialize repo"
git remote add origin $LINK
git push --set-upstream origin main
```

Add a license file to your remote GitHub repository and pull it into the local repository:

```bash
git pull
```

---

Now the setup is complete, and you can start using the repository.