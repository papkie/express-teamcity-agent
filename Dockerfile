FROM jetbrains/teamcity-agent

RUN add-apt-repository "deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main"
RUN curl -L https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -

RUN apt-get update -y
RUN apt-get install -y postgresql-9.6 python python-pip

RUN service postgresql restart && su -c "psql -c \"ALTER USER postgres WITH PASSWORD 'postgres';\"" - postgres
RUN sed -i 's/peer/md5/g' /etc/postgresql/9.6/main/pg_hba.conf

RUN curl -sL https://deb.nodesource.com/setup_9.x | bash -
RUN apt-get install -y nodejs build-essential

RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

RUN pip install awscli

ADD run-postgres.sh /services/run-postgres.sh
