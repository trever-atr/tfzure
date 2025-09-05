FROM ubuntu:22.04

# update and install sudo
RUN apt-get update && \
    apt-get -y install sudo

# install basic tools
RUN apt-get update && \
    apt-get install -y \
    curl \
    unzip

# install azure cli
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

# install terraform
RUN apt-get update && apt-get install -y gnupg software-properties-common curl wget git && \
    curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add - && \
    apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main" && \
    apt-get update && apt-get install terraform -y

# Install TFLint
RUN curl -s https://raw.githubusercontent.com/terraform-linters/tflint/master/install_linux.sh | bash

# Clean up
RUN apt-get clean && rm -rf /var/lib/apt/lists/*