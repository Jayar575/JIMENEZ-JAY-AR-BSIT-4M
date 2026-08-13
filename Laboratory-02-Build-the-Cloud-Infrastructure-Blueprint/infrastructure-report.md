# Infrastructure Report

## Operating System
**Command:** cat /etc/os-release
**Result:** Ubuntu 24.04.4 LTS (Noble Numbat)

## Kernel Version
**Command:** uname -r  
**Result:** 6.8.0-136-generic  

## CPU Model
**Command:** lscpu | grep "Model name" 
**Result:** Intel Xeon E312xx (Sandy Bridge, IBRS update)

## Number of CPU Cores
**Command:** nproc  
**Result:** 1 core

## Total RAM
**Command:** free -h 
**Result:** 1.9 GiB

## Disk Capacity
**Command:** lsblk 
**Result:** 20 GB

## Mounted File Systems
**Command:** df -h 
**Result:** /dev/vda1 → /
/dev/vda16 → /boot
/dev/vda15 → /boot/efi
tmpfs → /run
tmpfs → /dev/shm
tmpfs → /run/lock

## Hostname
**Command:** hostname  
**Result:** ubuntu

## IP Address
**Command:** hostname -I  
**Result:** 172.30.1.2 at 172.17.0.1
