#!/bin/sh
#QEMU koneen käynnistys

# Virtuaalikiintolevyn nimi johon on käyttöjärjestelmä asennettu.
QCOW2_FILE="tunkeutumistestaus.qcow2"

# Muistin määrä 4 Gt.
MEM_SIZE=4096

#VM käynnistys
qemu-system-x86_64 \
    -drive file=$QCOW2_FILE,format=qcow2 \
    -m $MEM_SIZE \
    -enable-kvm \
    -cpu host \
    -net nic,model=virtio \
    -net user
