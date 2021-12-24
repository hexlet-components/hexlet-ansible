ping-webservers:
	ansible all -i inventory.ini -m ping

ping-web1:
	ansible all -i inventory.ini -m ping --limit web1

ping-web2:
	ansible all -i inventory.ini -m ping --limit web2

ping-localhost:
	ansible all -i local.ini -u root -m ping

playbook-setup-git:
	ansible-playbook -vv -i inventory.ini setup_git.yml

playbook-remove-git:
	ansible-playbook -vv -i inventory.ini remove_git.yml

playbook-nginx:
	ansible-playbook -vv -i inventory.ini nginx.yml

playbook-main:
	ansible-playbook -vv -i inventory.ini nginx.yml

update-apt-cache:
	ansible-playbook -vvv -i inventory.ini setup_git.yml --tags apt-cache

install-git:
	ansible-playbook -vv -i inventory.ini setup_git.yml

show-webservers-facts:
	ansible all -i inventory.ini -m setup
