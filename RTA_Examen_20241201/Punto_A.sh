#!/bin/bash

sudo fdisk /dev/sdb
n
p
1
+5G
n
p
2
t
8E
w

sudo wipefs -a /dev/sdb1 /dev/sdb2

sudo pvcreate /dev/sdb1 /dev/sdb2
sudo pvs

sudo vgcreate vg_datos /dev/sdb1
sudo vgcreate vg_temp /dev/sdb2
sudo vgs

sudo lvcreate -L 5M vg_datos -n lv_docker
sudo lvcreate -L 1.5G vg_datos -n lv_workareas
sudo lvcreate -L 512M vg_temp -n lv_swap
sudo lvs

sudo fdisk -l
sudo mkfs -t ext4 /dev/mapper/vg_datos-lv_docker
sudo mkfs -t ext4 /dev/mapper/vg_datos-lv_workareas
sudo lsblk

sudo mkswap /dev/vg_temp/lv_swap
sudo swapon /dev/vg_temp/lv_swap

sudo mkdir -p /var/lib/docker
sudo mkdir -p /work
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
sudo mount /dev/mapper/vg_datos-lv_workareas /work/

df -h

sudo systemctl restart docker
sudo systemctl status docker

