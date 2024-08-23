#!/usr/bin/env bash
cd ../ami/ami-machine || exit
echo "###########################################"
echo "# Creating Base instance for AMI creation #"
echo "###########################################"
terraform apply -auto-approve
if [[ $? -eq 0 ]]; then
	echo "##################################################"
	echo "# Wait 180s for Base instance setup is completed #"
	echo "##################################################"
	secs=$((3 * 60))
	while [[ $secs -gt 0 ]]; do
		echo -ne "$secs\033[0K\r"
		sleep 1
		: $((secs--))
	done
	echo "Proceed to next stage: AMI creation"

	cd ../ami-creation || exit
	echo "#########################################"
	echo "# Creating AMI image from Base instance #"
	echo "#########################################"
	terraform apply -auto-approve

	cd ../ami-machine || exit
	echo "####################################################"
	echo "# Destroy Base instance after AMI image is created #"
	echo "####################################################"
	terraform destroy -auto-approve
else
	echo "#####################################"
	echo "# Destroy AMI machine because Error #"
	echo "#####################################"
	terraform destroy -auto-approve
fi
