#!/usr/bin/env bash
cd ../ami/ami-creation || exit
echo "#############################"
echo "# Destroy AMI Images on AWS #"
echo "#############################"
terraform destroy -auto-approve -refresh=false
