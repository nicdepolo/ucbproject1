# ucbproject1
An elk stack project for my UCB bootcamp.

## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![TODO: Update the path with the name of your diagram](Images/diagram_filename.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the _____ file may be used to install only certain pieces of it, such as Filebeat.

  - _TODO: Enter the playbook file._
https://github.com/nicdepolo/ucbproject1/blob/main/Ansible/elk-playbook.yml

This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly accessible, in addition to restricting traffic/strain to the network.
- _TODO: What aspect of security do load balancers protect? What is the advantage of a jump box? Load balancers protect against DDoS attacks by splitting traffic between VM’s. A jump box is advantageous because it allows us to connect directly to containers and servers.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the logs and system metrics.
- _TODO: What does Filebeat watch for? Log files
- _TODO: What does Metricbeat record? VM Metrics

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.





| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 13.64.96.175   | Linux            |
| Web-1    | DVWA/WebVM | 104.42.156.37  | Linux |
| Web-2    |DVWA/WebVM  | 104.42.156.37 | Linux  |
| ProjectJump     | 40.88.147.163 |            |  Linux  |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the virtual machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- _TODO: Add whitelisted IP addresses_
71.198.230.141

Machines within the network can only be accessed by the jump box.
- _TODO: Which machine did you allow to access your ELK VM? What was its IP address?_

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes              | 10.0.0.1 10.0.0.2    |
|          |                     |                      |
|          |                     |                      |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- _TODO: What is the main advantage of automating configuration with Ansible?_
You can use playbooks to apply installations across multiple machines. 

The playbook implements the following tasks:
- _TODO: In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc._
-Disable firewall
-Install Elastisearch and .yml files
-Install Kibana and .yml files
-Install Logstach and .yml files
-Connect through the IP:5601/app/kibana

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![TODO: Update the path with the name of your screenshot of docker ps output](Images/docker_ps_output.png)


### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- _TODO: List the IP addresses of the machines you are monitoring_
13.64.96.175
104.42.156.37
40.88.147.163

We have installed the following Beats on these machines:
- _TODO: Specify which Beats you successfully installed_
DVWA-Web-1
DVWA-Web-2

These Beats allow us to collect the following information from each machine:
- _TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._
What does Filebeat watch for? Log files
What does Metricbeat record? VM Metrics

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the Ansible.config file to my-playbook.yml.
- Update the Ansible file to include Web VM IP’s
- Run the playbook, and navigate to your container to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it? It’s a .yml file. Copy to Ansible container,
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?
Update my_playbook.yml by updating the tables and IP ranges. Run ansible-config.yml my_playbook.yml
You have to add the specific address and python interpreter tag to the [WEBSERVERS] group in the host file.
- _Which URL do you navigate to in order to check that the ELK server is running?
(JumpBoxIP):5601/app/kibana







_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._

