#!/bin/bash
cat ~/.zshrc ~/amazon_EC2_setup/append_zshrc > tmp
mv tmp ~/.zshrc
sed -i 's/robbyrussell/agnoster/g' ~/.zshrc
sed -i 's/plugins=(git)/plugins=(git command-not-found common-aliases debian dircycle dirhistory history history-substring-search colored-man-pages)/g' ~/.zshrc 
source ~/.zshrc
