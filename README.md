# mybptest
This will setup Docker Environment with Micro Service Setup for Nginx

Place all the files under a directory

Prior to using this files, the system should be installed with Vagrant and Oracle VirutalBox

Change to Directory created with files downloaded onto it.
vagrant init
vagrant up

Vagrantfile - Sets up vagrant box with CentOS provisioned with Ansible
playbook_docker.yml - Build docker environment with Nginx running as Micro Service
Task "Docker Compose Micro Service Build" calls Dockerfile to build container from image and runs docker-compose to bring Nginx Service up as micro service.
