FROM jetbrains/teamcity-agent

RUN apt update -y
RUN apt install -y postgres

RUN curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -
RUN apt install -y nodejs build-essential

RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
