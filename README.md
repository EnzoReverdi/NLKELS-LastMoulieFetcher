# NLKELS-LastMoulieFetcher
Js and Bash program to fetch the last moulie result from my.epitech.eu, meant to be a Polybar Module

# Dependencie
- Google Chrome
- Npm
- nodejs
- Puppeter

# install

You will have to enter the command listed under, NPM will install dependencies, a browser will open and you will to enter your credentials and the 2FA, you need to tick the button "remember me" the script won t work otherwise, JWT token refresh rate on my.epitech.eu is 15 minutes, so these step must be done manually before.

Check the code if you don't trust it, it s litteraly 50 line
# Quick install
git clone https://github.com/EnzoReverdi/NLKELS-LastMoulieFetcher.git && cd NLKELS-LastMoulieFetcher && ./install.sh

# Usage
Just execute the "NLKELS.sh" file the instalation created, and if the previous step were executed the right way it would print you something like "77% "Minishell2""

# TroubleShoting
50% of the error come from the place where you google chrome binaries is stored, find it and paste it at line 6 on credential.js and token_fetcher.js

The other 50% come from the fact that you moved the Folder after the quick instalation command, just rm -rf it and start over.