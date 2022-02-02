cd linux
KERNEL=kernel8
sudo env PATH=$PATH make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- INSTALL_MOD_PATH=/media/$(whoami)/rootfs modules_install
sudo cp /media/$(whoami)/boot/$KERNEL.img /media/$(whoami)/boot/$KERNEL-backup.img
sudo cp arch/arm64/boot/Image /media/$(whoami)/boot/$KERNEL.img
sudo cp arch/arm64/boot/dts/broadcom/*.dtb /media/$(whoami)/boot/
sudo cp arch/arm64/boot/dts/overlays/*.dtb* /media/$(whoami)/boot/overlays/
sudo cp arch/arm64/boot/dts/overlays/README /media/$(whoami)/boot/overlays/
