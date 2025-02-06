#!/bin/bash

# 001-critical-standards.sh: Initial system preparation and basic hardening.

# Error handler function
error_handler() {
  echo "Error occurred in script at line: $1. Exiting."
  exit 1
}

# Trap the ERR signal to catch errors and call the error_handler function
trap 'error_handler $LINENO' ERR

set -e

log_file="/var/log/001-critical-standards.log"

# Logging function
log() {
  echo "$(date +"%Y-%m-%d %H:%M:%S") - $1" | sudo tee -a $log_file
}

log "Starting 001-critical-standards.sh: Initial system preparation and basic hardening."

# Determine the SSH service name
get_ssh_service_name() {
  if sudo systemctl list-unit-files | grep -q "^ssh.service"; then
    echo "ssh"
  elif sudo systemctl list-unit-files | grep -q "^sshd.service"; then
    echo "sshd"
  else
    echo ""
  fi
}

# Disable unnecessary services
disable_services() {
  log "Disabling unused services..."
  services=("bluetooth" "cups" "nfs-server" "rpcbind")
  for service in "${services[@]}"; do
    if sudo systemctl is-enabled "$service" &>/dev/null; then
      sudo systemctl disable "$service"
      log "Disabled $service service."
    else
      log "$service service is already disabled or not found."
    fi
  done
}

# Install basic tools and perform updates
install_tools_and_update() {
  log "Installing basic tools and updating system..."
  if [ -f /etc/debian_version ]; then
    sudo apt-get update && sudo apt-get install -y curl vim git
  elif [ -f /etc/redhat-release ]; then
    sudo yum update -y && sudo yum install -y curl vim git
  else
    log "Unsupported system type. Exiting."
    exit 1
  fi
  log "Basic tools installed and system updated."
}

# Set up a basic system log directory
setup_log_directory() {
  log "Setting up log directory..."
  sudo mkdir -p /var/log/critical-standards
  sudo chmod 700 /var/log/critical-standards
  log "Log directory created at /var/log/critical-standards."
}

# Secure SSH by disabling root login and password authentication
secure_ssh() {
  log "Securing SSH configuration..."
  ssh_config="/etc/ssh/sshd_config"
  sudo sed -i 's/^#PermitRootLogin yes/PermitRootLogin no/' "$ssh_config"
  sudo sed -i 's/^#PasswordAuthentication yes/PasswordAuthentication no/' "$ssh_config"

  ssh_service=$(get_ssh_service_name)
  if [ -z "$ssh_service" ]; then
    log "SSH service not found. Skipping restart."
  else
    sudo systemctl restart "$ssh_service"
    log "SSH configuration updated and $ssh_service service restarted."
  fi
}

# Function to configure secure boot settings
configure_secure_boot() {
  echo "Configuring secure boot settings..."
    
  # Check if the system is UEFI-based
  if [ -d /sys/firmware/efi ]; then
    echo "System is UEFI-based, secure boot can be configured."
    # Detect the Linux distribution
    if [ -f /etc/debian_version ]; then
      DEBIAN_FRONTEND=noninteractive
      #installing machine owner key util
      echo "installing mokutil..."
      apt update
      apt install -y mokutil      
      mokutil --sb-state
    elif [ -f /etc/redhat-release ]; then
      #installing machine owner key util
      echo "installing mokutil..."
      yum install -y mokutil
      mokutil --sb-state      
    else
      echo "Unsupported OS. Exiting..."
      return 1
    fi
  
  else
    echo "System is not UEFI-based, secure boot settings are not applicable."
  fi
}

configure_firewall() {
  echo "configuring firewall..."
  # Check if the system is Debian-based
  if [ -f /etc/debian_version ]; then
    apt install -y ufw

    #define the ufw commands
    commands=(
      "ufw default deny incoming"
      "ufw default allow outgoing"
      "ufw allow ssh"
      "ufw allow http"
      "ufw allow https"
      "yes | ufw enable"
    )

    #Execute each UFW command
    for cmd in "${commands[@]}"; do
      echo "Executing: $cmd"
      if ! eval $cmd; then
        echo "Error! failed to execute '$cmd'."
        exit 1
      fi
    done
   
    # Configure firewall rules for RedHat-based systems using iptables or ufw
  elif [ -f /etc/redhat-release ]; then
    yum install -y firewalld
    
    #start and enable firewalld
    systemctl start firewalld 
    systemctl enable firewalld
    
    commands=(
      "firewall-cmd --set-default-zone=public"
      "firewall-cmd --permanent --add-service=ssh"
      "firewall-cmd --permanent --add-service=http"
      "firewall-cmd --permanent --add-service=https"
      "firewall-cmd --reload"
    )

    for cmd in "${commands[@]}"; do
      echo "Executing $cmd"
      if ! eval "$cmd"; then 
        echo "Error! failed to execute '$cmd'."
        return 1
      fi
    done 
  else 
    echo "Unsupported system detected. This script only works on Debian and RedHat based systems" 
    exit 1
  fi
  echo "Successfully configured firewall"
  
}

# Function to enforce minimum password length in PAM configuration
password_length() {
  echo "configuring password length..."
  MINLEN_VALUE="minlen = 12"
  # check if system is debian based
  if [ -f /etc/debian_version ]; then 
    CONFIG_FILE="/etc/pam.d/common-password"
    # Modify the minlen value in pam_unix.so
    if grep -q "pam_unix.so" "$CONFIG_FILE"; then
      sed -i "/pam_unix.so/ {s/minlen\s*=\s*[0-9]*/$MINLEN_VALUE/; t; s/$/ $MINLEN_VALUE/}" "$CONFIG_FILE"
    elif ! grep -q "minlen=" "$CONFIG_FILE"; then
      echo "password        [success=1 default=ignore]      pam_unix.so obscure yescrypt $MINLEN_VALUE" >> "$CONFIG_FILE"
    fi
  elif [ -f /etc/redhat-release ]; then
    CONFIG_FILE="/etc/security/pwquality.conf"
    # modify minlen value in pwquality.conf file
    sed -i 's/^\s*#\?\s*minlen\s*=\s*[0-9]*/minlen = 12/' "$CONFIG_FILE"
    # if minlen value is not found, then append it at the end 
    if ! grep -q "^minlen=" "$CONFIG_FILE"; then
      echo "$MINLEN_VALUE" >> "$CONFIG_FILE"
    fi
  else
    echo "unsupported system. exiting"
  fi 
  echo "password length value successfully configured"  

}

#Function  to monitor file integrity
configure_integrity_monitor() {
  echo "configuring file integrity monitor using AIDE..."
  #check if system is debian based
  if [ -f /etc/debian_version ]; then
    DEBIAN_FRONTEND=noninteractive
    apt update
    apt install aide -y
    
    #initialize aide
    echo "initializing AIDE, this may take several minutes..."
    aide --init --config=/etc/aide/aide.conf   
    #move the newly initialized database
    mv /var/lib/aide/aide.db.new /var/lib/aide/aide.db
    echo "AIDE initialization complete"

  #check if system is redhat based
  elif [ -f /etc/redhat-release ]; then 
    dnf install aide -y
    
    #initialize AIDE
    echo "initializing AIDE, this may take several minutes ..."
    aide --init --config=/etc/aide.conf
    #move the newly initialized database  
    mv /var/lib/aide/aide.db.new.gz /var/lib/aide/aide.db.gz
  else
    echo "unsupported operating system. Exiting..."
  fi 
  echo "File Integrity Monitoring configured"

}

set_lockout_policy() {
  echo "configuring lockout policy"
  # File paths for PAM configuration
  local sshd_file="/etc/pam.d/sshd"
  local debian_auth_file="/etc/pam.d/common-auth"
  local rhel_auth_file="/etc/pam.d/system-auth"

  # The PAM configuration lines to be added
  local pam_config="auth required pam_tally2.so onerr=fail deny=3 unlock_time=900"
  local account_config="account required pam_tally2.so"

  # Check if the system is Debian-based
  if [ -f /etc/debian_version ]; then
    # Append the PAM configuration to the sshd and common-auth files for Debian
    for file in "$sshd_file" "$debian_auth_file"; do
      if grep -q "$pam_config" "$file"; then
        echo "pam_tally2 configuration already present in $file"        
      else
        echo "$pam_config" | sudo tee -a "$file" > /dev/null
      fi

      if grep -q "$account_config" "$file"; then
        echo "Account config already present in $file."        
      else
        echo "$account_config" | sudo tee -a "$file" > /dev/null
      fi
    done

  # Check if the system is Red Hat-based
  elif [ -f /etc/redhat-release ]; then
    # Append the PAM configuration to the sshd and system-auth files for Red Hat
    for file in "$sshd_file" "$rhel_auth_file"; do
      if grep -q "$pam_config" "$file"; then
        echo "pam_tally2 configuration already present in $file."        
      else
        echo "$pam_config" | sudo tee -a "$file" > /dev/null
      fi

      if grep -q "$account_config" "$file"; then
        echo "Account config already present in $file."        
      else
        echo "$account_config" | sudo tee -a "$file" > /dev/null
      fi
    done
  fi

  echo "Lockout policy configured successfully."
}

# Clean up temporary files
clean_temp_files() {
  log "Cleaning up temporary files..."
  sudo rm -rf /tmp/*
  log "Temporary files cleaned."
}

# Main execution
disable_services
install_tools_and_update
setup_log_directory
configure_secure_boot
configure_firewall
password_length
configure_integrity_monitor
set_lockout_policy
secure_ssh
clean_temp_files

log "001-critical-standards.sh completed successfully."
