#!/bin/bash
PLEXURL=https://github.com/IBM/plex/releases/download/v6.4.0/OpenType.zip
FONTPATH=./module/system/fonts
MDPATH=./module

wget $PLEXURL -O ./OpenType.zip
echo "Unzipping Fonts other than CJK"
unzip -q -j OpenType.zip -x "**IBMPlexSansJP**" "**IBMPlexSansKR**" "**IBMPlexSansTC**" "**IBMPlexSansSC**" "**license.txt" -d ./module/system/fonts
echo "Unzipping Hinted CJK Font"
unzip -q -j OpenType.zip **/hinted/IBMPlexSans{SC,TC,JP}*.otf **/IBMPlexSansKR*.otf -x "**license.txt" -d ./module/system/fonts
echo "Packing Hinted Module"
cd $MDPATH && zip -r ../Module-Hinted.zip .
echo "Unzipping Unhinted CJK Font"
cd .. && unzip -q -j -o OpenType.zip **/unhinted/IBMPlexSans{SC,TC,JP}*.otf -x "**license.txt" -d ./module/system/fonts
echo "Packing Unhinted Module"
cd $MDPATH && zip -r ../Module-Unhinted.zip .
