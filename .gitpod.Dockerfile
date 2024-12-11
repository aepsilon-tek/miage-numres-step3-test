ARG GITPOD_IMAGE=gitpod/workspace-java-21:latest
FROM ${GITPOD_IMAGE}

USER gitpod

# Dazzle does not rebuild a layer until one of its lines are changed. Increase this counter to rebuild this layer.
ENV TRIGGER_REBUILD=1
ENV NODE_VERSION=22.12.0

### Node.js ###
ENV PATH=/home/gitpod/.nvm/versions/node/v22.12.0/bin:$PATH
RUN curl -fsSL https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash \
    && bash -c ". .nvm/nvm.sh \
        && npm config set python /usr/bin/python --global \
        && npm config set python /usr/bin/python \
        && npm install -g typescript"
