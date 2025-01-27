#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
ROOT_DIR=$(realpath "$SCRIPT_DIR/..")

create_disk_image() {
    NAME=$1
    FSTYPE=$2

    IMAGE_PATH=$ROOT_DIR/images/$NAME.img

    if [ ! -e $IMAGE_PATH ]; then
        truncate -s 32M $IMAGE_PATH
        DEV_NAME=$(sudo losetup -f --show $IMAGE_PATH)
        sudo mkfs -t $FSTYPE $DEV_NAME
        mkdir -p $ROOT_DIR/mnt/$NAME
        sudo mount $DEV_NAME $ROOT_DIR/mnt/$NAME
    fi
}


create_files() {
    NAME=$1
    for FILE in meme.jpg secretfile.txt work.txt; do
        sudo cp $ROOT_DIR/data/$FILE $ROOT_DIR/mnt/$NAME/
    done
}


mkdir -p $ROOT_DIR/tmp

create_disk_image fat fat
create_disk_image ext4 ext4
create_disk_image ntfs ntfs

create_files fat
create_files ext4
create_files ntfs


