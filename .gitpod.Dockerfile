ARG GITPOD_IMAGE=gitpod/workspace-base:latest
FROM ${GITPOD_IMAGE}


USER gitpod


RUN sudo apt-get -q update && \
    sudo apt install -yq openjdk-21-jdk


# install nvm
# RUN bash -c 'wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v$NVM_VERSION/install.sh | bash \
#    && source $HOME/.nvm/nvm.sh && nvm install $NODE_VERSION \
#    && nvm use $NODE_VERSION && nvm alias default $NODE_VERSION
#RUN echo "nvm use default &>/dev/null" >> ~/.bashrc.d/51-nvm-fix


ENV NODE_VERSION=22
ENV TRIGGER_REBUILD=1
RUN curl -fsSL https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | PROFILE=/dev/null bash \
    && bash -c ". .nvm/nvm.sh \
        && nvm install $NODE_VERSION \
        && nvm alias default $NODE_VERSION " \
    && echo ". ~/.nvm/nvm.sh"  >> /home/gitpod/.bashrc.d/50-node
ENV PATH=$PATH:/home/gitpod/.nvm/versions/node/v${NODE_VERSION}/bin