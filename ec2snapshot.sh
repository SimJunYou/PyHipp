#!/bin/bash

ssh -o StrictHostKeyChecking=no -i /data/MyKeyPair.pem ec2-user@18.141.213.214 "source ~/.bashrc; /home/ec2-user/.local/bin/pcluster update-compute-fleet --status STOP_REQUESTED --region ap-southeast-1 --cluster-name MyCluster02; ~/update_snapshot.sh data 2 MyCluster02"
