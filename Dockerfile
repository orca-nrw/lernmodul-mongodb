FROM ubuntu:18.04

# create user with a home directory
ARG NB_USER=jovyan
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}

# Install Python dependencies
RUN apt-get update -y && apt-get install -y python3-pip python-dev
RUN pip3 install --no-cache --upgrade pip && \
    pip3 install --no-cache notebook matplotlib ipywidgets && \
    pip3 install --no-cache pandas && \
    pip3 install --no-cache pymongo && \
    pip3 install jupyternb-task-review

# Intsall MongoDB
RUN apt-get -y install gnupg && \
    apt-get -y install wget && \
    wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | apt-key add - && \
    echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-4.2.list && \
    apt-get -y update

RUN DEBIAN_FRONTEND=noninteractive \
    TZ=Asia/Singapore \
    apt-get install -y mongodb-org=4.2.12 mongodb-org-server=4.2.12 mongodb-org-shell=4.2.12 mongodb-org-mongos=4.2.12 mongodb-org-tools=4.2.12

RUN adduser --disabled-password \
    --gecos "Default user" \
    --uid ${NB_UID} \
    ${NB_USER}
WORKDIR ${HOME}

# create mongo data and config folder
USER root
RUN chown -R ${NB_UID} ${HOME} && \
    mkdir data && \
    mkdir ./data/db && \
    mkdir ./data/configdb

# mongodb needs permission for the data folder and must be the owner
RUN chown -R mongodb:mongodb ${HOME}/data && \
    chmod -R 777 ${HOME}/data/

# copy the notebook data and change permission
COPY . ${HOME}
RUN chmod -R 777 ${HOME}/gridFS/
RUN chmod 777 /home/${NB_USER}/index.ipynb && \
    touch ${HOME}/mongod.log && chmod 777 ${HOME}/mongod.log

EXPOSE 27017

CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]
