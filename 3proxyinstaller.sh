apt-get update && apt-get -y upgrade
apt-get install -y build-essential nano
wget http://3proxy.ru/0.7.1.1/3proxy-0.7.1.1.tgz
tar xzf 3proxy-0.7.1.1.tgz
cd 3proxy
make -f Makefile.Linux
cd src
mkdir /etc/3proxy/
mv 3proxy /etc/3proxy/
cd /etc/3proxy/
wget --no-check-certificate https://raw.githubusercontent.com/Dauth/3proxy/master/3proxy.cfg
chmod 600 /etc/3proxy/3proxy.cfg
cd /etc/init.d/
wget --no-check-certificate https://raw.github.com/benjamin74/3proxy/master/3proxyinit
chmod  +x /etc/init.d/3proxyinit
update-rc.d 3proxyinit defaults
