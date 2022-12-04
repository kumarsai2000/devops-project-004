# devops-project-004
#jenkins file

#!/bin/bash


cd /var/lib/jenkins/workspace/one/Terraform

terraform init
terraform plan
terraform $tf_action -auto-approve

if [ $TERRAFORM_ACTION = "destroy" ]; then
	exit 0
else
	cd ../Ansible
	ansible-playbook -i /opt/ansible/inventory/aws_ec2.yml deployment.yml 
fi
