Usecase-1:Mounting EBS Volume to running EC2 instance and create some files and folders in the attached volume. 


-> list the available disks using the following command.
lsblk

-> Check if the volume has any data using the following command
sudo file -s /dev/sdf
If the above command output shows “/dev/xvdf: data“, it means your volume is empty.

-> Format the volume to the ext4 filesystem using the following command.
sudo mkfs -t ext4 /dev/sdf

-> Create a directory of your choice to mount our new ext4 volume in 'mnt' folder in root directory. I am using the name “volume1“. You
can name it something meaningful to you.
sudo mkdir /mnt/volume1

->Mount the volume to newvolume directory using the following command
sudo mount /dev/sdf /mnt/volume1

->cd into newvolume directory and check the disk space to validate the volume mount.
cd /mnt/volume1

df -h .     -> This command shows the available and used space in the disks.

-> By default on every reboot, the EBS volumes other than the root volume will get unmounted. To
enable automount, you need to make an entry in the /etc/fstab file.

sudo cp /etc/fstab /etc/fstab.bak
dev/sdf       /mnt/volume1/ ext4    defaults,nofail        0       0

Usecase-2: Detach the EBS volume from the instance that we created above and attach it to the new EC2 instance and check for the folders and files that we have created
earlier.

