## Laboratory-03-Multi-Cloud-Explorer
# Checkpoint 7 – Continue Your Linux Investigation

## System Information & Commands
bash
## Operating System
cat /etc/os-release
# Output:
cat: /etc/: Is a directory
cat: os-release: No such file or directory

## CPU Information
lscpu
# Output:
Architecture:                   x86_64
CPU op-mode(s):                 32-bit, 64-bit
Address sizes:                  39 bits physical, 48 bits virtual
Byte Order:                     Little Endian
CPU(s):                         1
Vendor ID:                      GenuineIntel
Model name:                     Intel Xeon E312xx (Sandy Bridge, IBRS update)  CPU @ 2.00GHz
Virtualization type:            full

## Memory Information
free -h
# Output:
               total        used        free      shared  buff/cache   available
Mem:            1.9Gi       416Mi       866Mi       1.1Mi       787Mi       1.5Gi
Swap:           1.0Gi          0B       1.0Gi

## Disk Storage
df -h
# Output:
Filesystem      Size  Used Avail Use% Mounted on
tmpfs           191M  996K  190M   1% /run
/dev/vda1        19G  5.4G   13G  30% /
/dev/vda16      881M  117M  703M  15% /boot
/dev/vda15      105M  6.2M   99M   6% /boot/efi
