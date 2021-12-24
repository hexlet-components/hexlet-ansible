ping-webservers:
	ansible all -i inventory.ini -m ping

ping-web1:
	ansible all -i inventory.ini -m ping --limit web1

ping-web2:
	ansible all -i inventory.ini -m ping --limit web2

ping-localhost:
	ansible all -i local.ini -u root -m ping
