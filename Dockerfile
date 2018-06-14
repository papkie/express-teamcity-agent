FROM jetbrains/teamcity-agent:2017.2.4

RUN apt-get update -y

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -

RUN apt-get install -y python python-pip nodejs build-essential

RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

RUN pip install awscli docker-compose