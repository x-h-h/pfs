umount ./pfspfs
rmmod pfs.ko
make
dd if=/dev/zero of=test.img bs=512 count=65536 
./mkfs 0 65536 10240 test.img
insmod pfs.ko
mount -o loop -t pfs test.img ./pfspfs