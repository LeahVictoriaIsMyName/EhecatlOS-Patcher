#!/bin/bash
echo "Please enter your password"
sudo rm -rf src/system/media/audio
sudo mkdir src/system/media/audio
cd src/system/media/audio
sudo wget https://github.com/LeahVictoriaIsMyName/EhecatlOS-Patcher/releases/download/EhecatlOS-Sound-Files/EhecatlOS.sound.files.zip
sudo unzip EhecatlOS.sound.files.zip
sudo mv system/product/media/audio/ringtones ./
sudo mv system/product/media/audio/alarms ./
sudo mv system/product/media/audio/ui ./
sudo mv system/product/media/audio/notifications ./
sudo rm -rf system
sudo rm -rf '/home/juno/Desktop/OxygenOS/src/system/media/audio/EhecatlOS.sound.files.zip' 
sudo rm -rf '/home/juno/Desktop/OxygenOS/src/system/media/audio/META-INF' 
cd ..
cd ..
cd app
sudo mkdir DiscoLauncher
cd DiscoLauncher
sudo wget https://github.com/cherryhoax/DiscoLauncher/releases/download/4907389-nightly/DiscoLauncher_4907389-nightly_WebView_arm64-v8a.apk
sudo chmod 644 DiscoLauncher_4907389-nightly_WebView_arm64-v8a.apk
sudo mv DiscoLauncher_4907389-nightly_WebView_arm64-v8a.apk DiscoLauncher.apk
cd ..
sudo chmod 755 DiscoLauncher
