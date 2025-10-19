#!/bin/bash

while true; do
    clear
    echo " Pentesting Toolkit "
    PS3="Select category: "
    select category in Reconnaissance DNS Web Network Password Exit; do
        case $category in
            Reconnaissance)
                PS3="Select tool: "
                select tool in "sublist3r -d DOMAIN" "theHarvester -d DOMAIN" "amass enum -d DOMAIN" Back; do
                    [ "$tool" = "Back" ] && break
                    read -p "Enter domain: " domain
                    eval "${tool/DOMAIN/$domain}"
                    read -p "Press enter to continue..."
                    break
                done
                ;;
                
            DNS)
                PS3="Select tool: "
                select tool in "dnsrecon -d DOMAIN" "dnsenum DOMAIN" "fierce --domain DOMAIN" Back; do
                    [ "$tool" = "Back" ] && break
                    read -p "Enter domain: " domain
                    eval "${tool/DOMAIN/$domain}"
                    read -p "Press enter to continue..."
                    break
                done
                ;;
                
            Web)
                PS3="Select tool: "
                select tool in "gobuster dir -u URL" "nikto -h URL" "dirb URL" Back; do
                    [ "$tool" = "Back" ] && break
                    read -p "Enter target: " target
                    eval "${tool/URL/$target}"
                    read -p "Press enter to continue..."
                    break
                done
                ;;
                
            Network)
                PS3="Select tool: "
                select tool in "nmap -sV TARGET" "masscan TARGET" Back; do
                    [ "$tool" = "Back" ] && break
                    read -p "Enter target: " target
                    eval "${tool/TARGET/$target}"
                    read -p "Press enter to continue..."
                    break
                done
                ;;
                
   Password Attacks)
                PS3="Select tool: "
                select tool in "hydra -l user -P pass.txt SERVICE" "john hashfile" "hashcat -m 0 hashfile" Back; do
                    [ "$tool" = "Back" ] && break
                    echo "Running: $tool"
                    read -p "Press enter to continue..."
                    break
                done
                ;;
                
            Exit)
                echo "Exiting program"
                exit 0
                ;;
        esac
        break
    done
done
