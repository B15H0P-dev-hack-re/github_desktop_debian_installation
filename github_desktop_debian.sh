#!/bin/bash

USERDECISION = $(echo -e '\e[33mDo you want to remove unwanted files created by this script [YES/NO]\e[0m ' && read REMOVE_DECISION)
INSTALLATION = $(echo -e '\e[32m\e[1mINSTALLATION COMPLETE!!!\e[0m')

echo -e '\e[33mCONFIGURING...\e[0m'
sudo wget https://github.com/shiftkey/desktop/releases/download/release-2.6.3-linux1/GitHubDesktop-linux-2.6.3-linux1.deb
sudo apt-get install gdebi-core -y
sudo gdebi GitHubDesktop-Linux-2.6.3-linux1.deb
sudo dpkg -i GitHubDesktop*.deb
$USERDECISION
echo $REMOVE_DECISION | tr '[:upper:]' '[:lower:]'
if [[ $REMOVE_DECISION == 'y' || $REMOVE_DECISION == 'yes' ]]; then
        echo -e '\e[32mFILES REMOVED\e[0m'
        $INSTALLATION
elif [[ $REMOVE_DECISION == 'n' || $REMOVE_DECISION == 'no' ]]; then
        echo -e '\e[36mOKAY, AS YOU WISH\e[0m'
        $INSTALLATION
else
        echo -e '\e[33mJust enter YES or NO\e[0m'
        $USERDECISION
        
fi

