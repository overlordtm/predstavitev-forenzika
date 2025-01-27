# disk image forensics

## Create dummy disk images

Folder `images` must be empty! Remove all *.img files from it before running setup.

```
./setup/disk-images.sh
```

Run `losetup -a` to find on which device is certain image.

```
losetup -a
/dev/loop1: []: (/home/kali/ws.ls25/workshop/forensics/disks/images/ext4.img)
/dev/loop2: []: (/home/kali/ws.ls25/workshop/forensics/disks/images/ntfs.img)
/dev/loop0: []: (/home/kali/ws.ls25/workshop/forensics/disks/images/fat.img)
```

Find mountpoints
```
mount | grep disks/mnt
/dev/loop0 on /home/kali/ws.ls25/workshop/forensics/disks/mnt/fat type vfat (rw,relatime,fmask=0022,dmask=0022,codepage=437,iocharset=ascii,shortname=mixed,utf8,errors=remount-ro)
/dev/loop1 on /home/kali/ws.ls25/workshop/forensics/disks/mnt/ext4 type ext4 (rw,relatime)
/dev/loop2 on /home/kali/ws.ls25/workshop/forensics/disks/mnt/ntfs type fuseblk (rw,relatime,user_id=0,group_id=0,allow_other,blksize=4096)
```

## Tasks
Create/delete/shred/wipe files and play around with [autopsy](https://www.autopsy.com/)

## Inspect image with strings command:
```
strings -n8 images/fat.img
```

## See image in hex

```
xxd images/fat.img
```

