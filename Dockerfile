FROM ubuntu:18.04

# create user with a home directory
ARG NB_USER=jovyan
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}

RUN apt-get update -y && apt-get install -y python3-pip python-dev
RUN pip3 install --no-cache --upgrade pip && \
    pip3 install --no-cache notebook matplotlib && \
    pip3 install pymongo && \
    pip3 install jupyter-notebookparams

RUN apt-get -y install gnupg
RUN apt-get -y install wget
RUN wget -qO - https://www.mongodb.org/static/pgp/server-4.0.asc | apt-key add -
RUN echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-4.0.list
RUN apt-get -y update

RUN DEBIAN_FRONTEND=noninteractive \
    TZ=Asia/Singapore \
    apt-get install -y mongodb-org=4.0.16 mongodb-org-server=4.0.16 mongodb-org-shell=4.0.16 mongodb-org-mongos=4.0.16 mongodb-org-tools=4.0.16

RUN adduser --disabled-password \
    --gecos "Default user" \
    --uid ${NB_UID} \
    ${NB_USER}
WORKDIR ${HOME}

USER root
RUN chown -R ${NB_UID} ${HOME}
RUN mkdir data && mkdir ./data/db && mkdir ./data/configdb

RUN chown -R mongodb:mongodb ${HOME}/data
RUN chmod -R 777 ${HOME}/data/

COPY README.md /home/${NB_USER}
COPY index.ipynb /home/${NB_USER}
RUN chmod 777 /home/${NB_USER}/index.ipynb

COPY Stammdaten.json /home/${NB_USER}
COPY mongod.conf /etc/
RUN touch ${HOME}/mongod.log
RUN chmod 777 ${HOME}/mongod.log

EXPOSE 27017
CMD ["mongod --config /etc/mongod.conf"]