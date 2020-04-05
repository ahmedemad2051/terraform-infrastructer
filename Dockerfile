FROM jenkins/jenkins:lts
USER "root"
RUN apt-get -y update && apt-get -y install unzip
WORKDIR /usr/local/bin/
ADD https://releases.hashicorp.com/terraform/0.12.18/terraform_0.12.18_linux_amd64.zip .
RUN unzip terraform_0.12.18_linux_amd64.zip && rm terraform_0.12.18_linux_amd64.zip
RUN chown jenkins:jenkins terraform
RUN apt-get -y install awscli && apt-get -y install python3-pip 
RUN pip3 install awscli --upgrade --user
USER "jenkins"
