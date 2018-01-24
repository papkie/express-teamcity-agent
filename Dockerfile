FROM jetbrains/teamcity-agent

RUN apt-get update -y
RUN apt-get install -y postgresql

RUN curl -sL https://deb.nodesource.com/setup_9.x | bash -
RUN apt-get install -y nodejs build-essential

RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
