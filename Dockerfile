FROM ubuntu:20.04

# Update system and install required packages
RUN apt-get update && apt-get install -y \
    sudo \
    openssh-server \
    net-tools \
    lvm2

# Remove redundant openssh-server installation
# RUN sudo apt install openssh-server

# Remove erroneous command
# RUN cat /etc/netplan/00-installer-config.yaml

# Change root password
RUN sudo passwd root

# Enable root login
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config