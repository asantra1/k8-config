# GitHub connection through SSH 

Look at the link 

https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

```
ssh-keygen -t ed25519 -C "your_email@example.com"

eval "$(ssh-agent -s)" # start ssh agent as a background

open ~/.ssh/config

```
If the config does not exist create a new one
```
touch ~/.ssh/config

```
Open the ~/.ssh/config and the following line, note that host denotes the server ( in case if bitbucket the host will be bitbucket.com)
```
Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_ed25519
```

Add SSH private key to key chain
```
ssh-add -K ~/.ssh/id_ed25519
```
Add the public key to GitHub

```
cat ~/.ssh/id_ed25519.pub | pbcopy
```

