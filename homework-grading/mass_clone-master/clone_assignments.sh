#!/bin/sh

# Runs clone_all.sh with defaults, designed to be user editable

# Written By: Brian Konzman


if [[ $# -ne 1 ]];
	then
	echo ""
	echo "This script is designed to be edited by the user and will run clone_all.sh with defaults"
	echo ""
	echo "Please provide 1 parameter:"
	echo "1. Name of unique identifier(assignment)"
else

	assignment=$1

	#edit these variables to your defaults
	organization="cs-fullstack-fall-2018"
	username="Kevin-CodeCrew"
	protocol="https"

	./clone_all.sh ${organization} ${assignment} ${username} ${protocol}
fi