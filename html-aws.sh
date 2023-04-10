launch an ec2 instance via aws management console. 
while launching the ec2 instance, create security group and open port 80 and port 22
ssh into the ec2 instance. to do that: first, put the ec2 key pair in the home directory of your local machine. 
then, for mac ssh using:
ssh -i <ec2_keypair name>  ec2-user@<public ipv4 of ec2 instance>
e.g., ssh -i ec2_key.pem ec2-user@3.83.148.225

sudo su
yum update -y
yum install -y httpd
cd /var/www/html
wget https://github.com/azeezsalu/techmax/archive/refs/heads/main.zip
unzip main.zip
cp -r techmax-main/* /var/www/html/
rm -rf techmax-main main.zip
systemctl enable httpd 
systemctl start httpd


# https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide CHAP_Tutorials.WebServerDB.CreateWebServer.html