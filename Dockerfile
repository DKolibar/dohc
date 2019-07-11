FROM dkolibar/ksandermann-updated:latest

RUN apt-get update && \
apt-get install -y apt-transport-https ca-certificates gnupg2 software-properties-common && \
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - && \
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic test" && \
apt-get update && \
apt-get install -y docker-ce jq && \
apt-get install maven

RUN docker -v
RUN mvn -v
