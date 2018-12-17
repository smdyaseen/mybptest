# mybptest
This will setup Docker Environment with Micro Service Setup for Nginx

Place all the files under a directory and the system should be installed with Vagrant and Oracle VirutalBox

Change to Directory created with files downloaded onto it.
vagrant init
vagrant up

Vagrantfile - Sets up vagrant box with CentOS provisioned with Ansible
			- This runs three playbooks
	playbook_docker.yml
		- Install Pre-requsites and docker
	playbook_nginx.yml
		- Setup Container with customized content and build the image to use for micro service setup
	playbook_microservice.yml
		- Uses Dockerfile/docker-compose.yml to create an container and runs as micro service using shell script "start-nginx-microservice"
		
Task "Docker Compose Micro Service Build" calls Dockerfile to build container from image and runs docker-compose to bring Nginx Service up as micro service.

To test the nginx setup, access the page at port 8080.

test_deploy.sh bash script to the nginx host and service status
