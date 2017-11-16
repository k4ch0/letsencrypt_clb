#!/bin/bash
#===============================================================================
#
#          FILE:  generate-ssl.sh
# 
#         USAGE:  ./generate-ssl.sh 
# 
#   DESCRIPTION:  
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:   (), 
#       COMPANY:  
#       VERSION:  1.0
#       CREATED:  08/04/2017 09:48:04 PM CDT
#      REVISION:  ---
#===============================================================================

function clone-repo() {
	sudo git clone https://github.com/letsencrypt/letsencrypt /opt/letsencrypt
}

function create-ssl(){
	local DOMAIN="$1"
	local EMAIL="$2"
	sudo -H /opt/letsencrypt/letsencrypt-auto certonly --standalone --email "$EMAIL" --agree-tos -d "$DOMAIN" -d www."$DOMAIN"
}

