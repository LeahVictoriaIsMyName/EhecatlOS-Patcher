!#/bin/bash

echo "Please enter your password"
sudo fallocate -l 6G system.img
sudo fallocate -l 2G vendor.img
sudo fallocate -l 2G product.img
sudo fallocate -l 2G system_ext.img
sudo e2fsck -f system.img
sudo resize2fs system.img 6G
sudo e2fsck -f vendor.img
sudo resize2fs vendor.img 2G
sudo e2fsck -f product.img
sudo resize2fs product.img 2G
sudo e2fsck -f system_ext.img
sudo resize2fs system_ext.img 2G
echo "Done resizing, please run hydraulic_press.sh to resize to a normal size"
sudo mount -o loop,rw -t ext4 system.img src/
sudo mount -o loop,rw -t ext4 vendor.img src/vendor
sudo mount -o loop,rw -t ext4 product.img src/product
sudo mount -o loop,rw -t ext4 system_ext.img src/system_ext
echo "Done! Now you can work on the system, be sure to run your file explorer as root"
echo "e.g."
echo "$ sudo caja"
