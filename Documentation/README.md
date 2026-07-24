ICT171 Cloud Server Project

Student Name: Nkurunziza Ann Nyirahabwa

Student Number: 35802025

Unit: I71 Cloud Server Project

Website and Server Information

[My EC2 Public IP](http://3.94.166.22)

[annproject171.store](http://annproject171.store)

[www.annproject171.store](http://www.annproject171.store)

[GitHub Repository](https://github.com/AnnNkurunziza/ICT171-Cloud-Server-Project)

[Video Explainer](https://murdochuniversity-my.sharepoint.com/:v:/r/personal/35802025_student_murdoch_edu_au/Documents/ICT171%20video%20explanation.mp4?csf=1&web=1&e=TfcXbm)

1. Project Overview
 
This project implements a cloud-hosted web server running on an AWS EC2 instance.
The server hosts a custom-built HTML website titled Ann’s Travel Tips and Guides, which provides practical travel advice on budgeting, packing, safety, and destination preparation.

3. What This Project Demonstrates:

This project demonstrates;

> Cloud server deployment using IaaS

> Linux command-line configuration

> Apache2 web server setup on Ubuntu

> GitHub documentation

> Shell scripting

> DNS configuration

3. EC2 Set up

I created an AWS EC2 instance using Ubuntu Server 22.04 LTS. The instance type I used was t3.micro. While in my EC2 instance, I configured the following inbound security group rules;

> HTTP (port 80) - Allow from anywhere

> SSH (port 22) - Allow only from my IP

I connected to the instance using SSH - (ssh -i "mykey.pem" ubuntu@3.94.166.22)

4. Apache Web Server Setup

After connecting to my EC2 instance, I updated my server's package list using sudo apt update. I then installed the Apache2 web server using sudo apt install apache2 -y. Here, Apache automatically created the default web directory (/var/www/html). I replaced the default index.html file with my custom Travel Blog website using (cd /var/www/html) and (sudo nano index.html). After editing, I restarted Apache by running (sudo systemctl restart apache2). This allowed my custom website (Ann's Travel Tips and Guides) to load successfully from both the EC2 public IP address and my domain name.


6. For this project, I used the following commands;
> sudo apt update: I ran this to refresh the server’s package list, so it knows what software is available.
> sudo apt install apache2 -y: I ran this to install the Apache web server(Ubuntu). 
> sudo systemctl status apache2: I ran this to check the Apache status
> cd/var/www/html: I ran this to locate me into the folder where Apache stores website files by default.
> ls -l: I used this to list the files in the Apache web directory so that I could check that my index.html was actually there.
> sudo chmod 755 /var/www/html: I ran this to make sure the Apache server had the right permissions to read the website files.
> sudo nano index.html: I then used nano to open and edit my website file.
> sudo systemctl restart apache2: After updating my website, I restarted Apache so that the different changes I made would show up when I refreshed the page.

6. Website Files:
My website HTML file is stored in- /website/index.html

7. Script:
I have stored my script in: /script/myscript.sh
This script updates the server, installs Apache, and restarts the service. 
The Script Contents;
#!/bin/bash
# Update the server package list
sudo apt update -y
# Install the Apache web server
sudo apt install apache2 -y
# Restart Apache to make sure it is running
sudo systemctl restart apache2

MY SCRIPT VERIFICATION: This script automates the setup of an Apache web server.
It updates the server’s package list, installs Apache2, and restarts the service to ensure it is running. This allows the EC2 instance to serve web content immediately after execution.
To verify that my script works correctly, I ran (bash /script/myscript.sh). This confirmed that the server package list was updated, Apache2 was installed and that the Apache service was restarted and running. I verified this using (sudo systemctl status apache2). This confirmed that the script had been executed successfully.

8. DNS Setup
I purchased the domain annproject171.store from GoDaddy.
My DNS records are as follows;
Type: A
Name: @
Value: 3.94.166.22
TTL: 600 seconds
I confirmed that the CNAME record for “www” was already correct;
Type: CNAME
Name: www
Value: annproject171.store
TTL: Default
After waiting for DNS propagation, which took about 10 minutes, both annproject171.store and www.annproject171.store successfully loaded my EC2 website.

9. Testing
I tested my server by entering the EC2 public IP address (3.94.166.22) in a web browser. The Apache default page loaded successfully, confirming that Apache was installed and running. After uploading my custom index.html, refreshing the page displayed my website (Ann’s Travel Tips and Guides).
Once DNS was configured and propagation completed, I tested my domain:
> annproject171.store
> www.annproject171.store
Both URLs successfully loaded my website, confirming correct DNS configuration.

10. Challenges and Solutions
> My script initially failed due to Windows line endings in the Script as I had added a few lines explaining the script and because of this, Windows Powershell had failed to update my script onto my web server. I was able to fix this issue using (dos2unix myscript.sh)
> I also had a few Apache permission issues. I corrected the directory permissions using (sudo chmod 755 /var/www/html).

11. What I Learned from this assignment;
> How to deploy and configure a cloud server using AWS EC2
> How to install and manage Apache on Ubuntu
> How to use SSH and SCP effectively
> How to write and debug shell scripts
> DNS setup and configuration
> How DNS records map domains to servers

9. Screenshots:
My screenshots will be stored in- /screenshots folder/

