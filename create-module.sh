#!/bin/bash
PLEXURL=https://github.com/IBM/plex/releases/download/v6.4.0/OpenType.zip
FONTPATH=./module/system/fonts
ETCPATH1=./module/system/etc
ETCPATH2=./module/system/system_ext/etc
MDPATH=./module
CONFPATH=./configs

echo "Copying confs"
cp -f $CONFPATH/fonts.xml $ETCPATH1/fonts.xml
cp -f $CONFPATH/fonts.xml $ETCPATH1/fonts_base.xml
cp -f $CONFPATH/fonts.xml $ETCPATH2/fonts_base.xml
echo "Download Fonts"
wget -nv $PLEXURL -O ./OpenType.zip
echo "Unzipping Fonts other than CJK"
unzip -q -j OpenType.zip -x "**IBMPlexSansJP**" "**IBMPlexSansKR**" "**IBMPlexSansTC**" "**IBMPlexSansSC**" "**license.txt" -d ./module/system/fonts
echo "Unzipping Hinted CJK Font"
unzip -q -j OpenType.zip **/hinted/IBMPlexSans{SC,TC,JP}*.otf **/IBMPlexSansKR*.otf -x "**license.txt" -d ./module/system/fonts
cp -f $CONFPATH/hinted.prop $MDPATH/module.prop
echo "Packing Hinted Module"
cd $MDPATH && zip -r ../Module-Hinted.zip .
echo "Unzipping Unhinted CJK Font"
cd .. && unzip -q -j -o OpenType.zip **/unhinted/IBMPlexSans{SC,TC,JP}*.otf -x "**license.txt" -d ./module/system/fonts
cp -f $CONFPATH/unhinted.prop $MDPATH/module.prop
echo "Packing Unhinted Module"
cd $MDPATH && zip -r ../Module-Unhinted.zip .
