FROM mongo:4.0.21-xenial

# create user with a home directory
ARG NB_USER=jovyan
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}

RUN apt-get update -y && apt-get install -y python3-pip python-dev
RUN pip3 install --no-cache --upgrade pip && \
    pip3 install --no-cache notebook matplotlib
RUN pip3 install pymongo

RUN adduser --disabled-password \
    --gecos "Default user" \
    --uid ${NB_UID} \
    ${NB_USER}
WORKDIR ${HOME}

USER root
RUN chown -R ${NB_UID} ${HOME}
RUN chown -R ${NB_UID} /data/db /data/configdb
RUN chown -R mongodb:mongodb /data/db /data/configdb
RUN chmod 770 /data/db /data/configdb
RUN chmod -R 770 /data/db
RUN chmod -R 770 /data/db

COPY README.md /home/${NB_USER}
COPY index.ipynb /home/${NB_USER}
#COPY mongod.conf /home/${NB_USER}
#RUN chmod 770 /home/${NB_USER}/mongod.conf

EXPOSE 27017
CMD ["mongod"]