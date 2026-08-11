#!/bin/bash
echo "Please input your password"
sudo mkdir src
simg2img super.img super_raw.img
simg2img userdata.img userdata_raw.img
lpunpack super_raw.img
echo "Successfully unpacked files, mounting them"
./mount.sh
