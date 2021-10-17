FROM jenkins/jenkins:lts

USER root

# install yarn
RUN apt-get update --fix-missing \
    && apt-get install -y --no-install-recommends nodejs npm \
    && npm install -g yarn

# install aws-cdk
RUN npm install -g aws-cdk

USER jenkins