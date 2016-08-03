#!/bin/bash

apkBaseName=$1
tempSmaliDir=$2

if [ "$apkBaseName" = "Settings" ];then
	echo ">>>custom_app in Settings"
	sed -i '/nfc_quick_toggle_title/d' $tempSmaliDir/res/xml/wireless_settings.xml

fi



