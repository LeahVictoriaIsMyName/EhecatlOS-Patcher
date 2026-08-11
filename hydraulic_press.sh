!#/bin/bash
echo "Please enter your password"
sudo umount -R src
sudo e2fsck -yf system.img
sudo e2fsck -yf vendor.img
sudo e2fsck -yf system_ext.img
sudo e2fsck -yf product.img
sudo resize2fs -M system.img
sudo resize2fs -M vendor.img
sudo resize2fs -M system_ext.img
sudo resize2fs -M product.img
sudo e2fsck -yf system.img
sudo e2fsck -yf vendor.img
sudo e2fsck -yf system_ext.img
sudo e2fsck -yf product.img
echo "Done resizing, now its a sparse file system, be sure to pack them up with packaging_tape.sh"
