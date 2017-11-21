sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get install linux-image-extra-`uname -r`
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
sudo sh -c "echo deb http://get.docker.io/ubuntu docker main\
> /etc/apt/sources.list.d/docker.list"
sudo apt-get update
sudo apt-get install lxc-docker git
sudo ufw allow 4243/tcp
sudo docker -d &
docker pull tutum/wordpress
docker run -d -p 80:80 tutum/wordpress

# To run a container with memory limited to 256 MBs:
docker run -m 64m -d -p 8082:80 tutum/wordpress

