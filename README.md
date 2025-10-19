# Pentesting Toolkit

A simple bash script that organizes and quick-launches common penetration testing tools from Kali Linux.

## 📋 Overview

This script provides a menu-driven interface to quickly access your favorite pentesting tools organized by categories. No more remembering complex command syntax!

## 🚀 Features

- **Clean Menu Interface** - Easy navigation with `select` menus
- **Tool Categories** - Organized by reconnaissance, DNS, web, network, and password attacks
- **Quick Launch** - Runs tools with proper flags and your target input
- **Simple & Lightweight** - Pure bash, no dependencies

## ⚡ Quick Start

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/pentesting-toolkit.git
   cd pentesting-toolkit

2.Make it executable

   ```bash
   chmod +x toolkit.sh


3.Run the script

```bash
./toolkit.sh

##🛠️ Usage
Run the script

Select a category from the main menu:

Reconnaissance - sublist3r, theHarvester, amass

DNS Enumeration - dnsrecon, dnsenum, fierce

Web Application - gobuster, nikto, dirb

Network Scanning - nmap, masscan

Password Attacks - hydra, john, hashcat

##📝 Prerequisites
Kali Linux or any Linux with pentesting tools installed

Bash shell

The tools you want to use must be installed separately
