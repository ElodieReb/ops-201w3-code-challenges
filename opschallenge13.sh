#!/bin/bash

# script name: opschallenge13
# author: elodie
# date of latest revision: 07-16-2023
# purpose: the objective of this script is to ask a user to type a domain,
        # then display information about the typed domain. The following
        # operations must be used:
        # (1) whois
        # (2) dig
        # (3) host
        # (4) nslookup

# declaration of variables

# declaration of functions
ask_for_domain () {
    echo "Please enter a domain name"
    read DOMAIN # prompts user to enter a domain name
}

create_txt_file () {
    touch domaininfo.txt
}

domain_information () {
    whois $DOMAIN >> domaininfo.txt
    dig $DOMAIN >> domaininfo.txt
    host $DOMAIN >> domaininfo.txt
    nslookup $DOMAIN >> domaininfo.txt
}

# main
ask_for_domain
echo "Processing domain name. Extracting domain information now."
domain_information
echo "All done. See file, domaininfo.txt, for information regarding the domain, $DOMAIN. Cheerio."

# end

# Used `cat domaininfo.txt` to double check the information was successfully
# printed to the .txt file.
