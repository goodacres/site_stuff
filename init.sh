# Install EPEL
echo "- Install EPEL -"
sudo yum install epel-release

# Install Ansible
echo "- Install Ansible -"
sudo yum install ansible

# Install Docker
echo "- Install Docker & Dependencies -"
sudo yum install yum-utils device-mapper-persistent-data lvm2
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install docker-ce
sudo systemctl enable docker
sudo systemctl start docker
sudo usermod -aG docker $USER
