sudo apt install -y git bc bison flex libssl-dev make libc6-dev libncurses5-dev crossbuild-essential-arm64
git clone --depth=1 https://github.com/raspberrypi/linux
cp dante-bcm2711_defconfig linux/
cd linux
KERNEL=kernel8
make -j $(( $nproc + $(nproc) / 2 )) ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- ../dante-bcm2711_defconfig
make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- menuconfig
make -j $(( $nproc + $(nproc) / 2 )) ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- Image modules dtbs
