# mongodb_1

TODO: Enter the cookbook description here.

# This cookbook contains info on how to connect a cookbook to Jenkins, and spool up on an amazon EC2 instance.

# This readme assumes that you have access to AWS and access to an ec2 instance with Jenkins installed.

## 1.) Ensure you have a working repo that contains a chef cookbook, has rake tests and integration tests. I used my mongodb cookbook from github.
https://github.com/Git-Good-Milo/Week_8_Mongodb_Chef_Cookbook

## 2.) Create the right .yml file
- touch a new .yml file in your repo. This will be saved to an environment variable to be later used on Jenkins.
- This file needs to configured to allow chef to spool up an Amazon ec2 instance. For example

      driver:
        name: ec2
        region: <select_a_region_for_the_instance>
        require_chef_omnibus: true
        instance_type: <t2.micro>
        #Subnet
        subnet_id: <subnet-of_your_choice>
        associate_public_ip: true
        aws_ssh_key_id:  <aws_ssh_key_id>

## 3.) Install and configure AWS cli
-  follow the link to install the cli:
https://docs.aws.amazon.com/cli/latest/userguide/install-windows.html#install-msi-on-windows
- This link is specifically for windows.
- Make sure you have python and python-pip packet manager installed if you want to install it from the command line.
- To configure, follow this link:
https://docs.aws.amazon.com/polly/latest/dg/setup-aws-cli.html

## 3.) Configure Jenkins project
- Create a free project on jenkins.
- Configure it to listen to your github repo via a webhook.
-



Test 15 added environmental variables
Test 16
Test 17
