FROM jetbrains/teamcity-agent:2017.2.4

ENV DOCKER_IN_DOCKER=start

RUN apt-get update -y

RUN curl -sL https://deb.nodesource.com/setup_9.x | bash -

RUN apt-get install -y python python-pip nodejs build-essential

RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

RUN pip install awscli docker-compose