#!/bin/bash
PLEXURL=https://github.com/IBM/plex/releases/download/v6.4.0/OpenType.zip
FONTPATH=./module/system/fonts
MDPATH=./module

wget $PLEXURL -O ./OpenType.zip
unzip -j OpenType.zip -d $FONTPATH
cd $MDPATH && zip -r ../Module.zip .
