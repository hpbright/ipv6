echo "working folder = /home/proxy-installer"
WORKDIR="/home/proxy-installer"
WORKDATA="${WORKDIR}/data.txt"
chkconfig 3proxy on
cd $WORKDIR
bash /etc/rc.local

touch /var/lock/subsys/local
bash /home/proxy-installer/boot_iptables.sh
bash /home/proxy-installer/boot_ifconfig.sh
ulimit -n 10048
service 3proxy start
