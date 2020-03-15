netcat 192.168.1.15 9999 > 1.img
python2 vol.py -f 1.img  --profile=LinuxrazacqARM linux_psscan
