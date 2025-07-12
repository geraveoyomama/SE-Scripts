#!/bin/bash

autopath=$(find ~ -type d | grep 'SpaceEngineers/Bin64' |awk 'NR==1{print $1}')
gamepath=${autopath%%/Bin64*}/Bin64


if [[ $1 ]]; then
  gamepath=$1
else
  read -p "Is $gamepath your Space Engineers Bin64 folder? (ctrl+c if no)"
fi

cd $gamepath
echo "Using, $PWD"
#wget https://gist.githubusercontent.com/opekope2/e02db7e526dadff0813a6ea2aebf820b/raw/SpaceEngineersLauncher.py -O SpaceEngineersLauncher.py
#echo "Opekope's script downloaded!"
wget https://github.com/StarCpt/SpaceEngineersLauncher/releases/latest/download/SpaceEngineersLauncher.exe -qO SpaceEngineersLauncher.exe
echo "StarCpt's SpaceEngineersLauncher downloaded!"
echo "Setting execute permissions for downloaded files..."
chmod ug+rx SpaceEngineersLauncher.exe #SpaceEngineersLauncher.py
echo "Permissions set!"
echo ""
echo "Add '"bash -c \''exec "${@/%SpaceEngineers.exe/SpaceEngineersLauncher.exe}"'\' -- %command%"' to your game's launch options."
sleep 2
