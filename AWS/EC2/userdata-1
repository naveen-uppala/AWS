#########################-----AMAZON LINUX-----------################################
#!/bin/bash
# Use this for your user data (script from top to bottom)
# install httpd (Linux 2 version)
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>Hello World from $(hostname -f)</h1>" > /var/www/html/index.html

#########################-----UBUNTU-----------################################

#!/bin/bash
# Use this for your user data (script from top to bottom)
# install httpd (Linux 2 version)
apt update -y
apt install -y apache2
systemctl start apache2
systemctl enable apache2
echo "<h1>Hello World from $(hostname -f)</h1>" > /var/www/html/index.html
