ARG GITPOD_IMAGE=gitpod/workspace-java-21:latest
FROM ${GITPOD_IMAGE}

USER gitpod

# Dazzle does not rebuild a layer until one of its lines are changed. Increase this counter to rebuild this layer.
ENV TRIGGER_REBUILD=1
ENV NODE_VERSION=22.12.0

ENV NVM_DIR /usr/local/nvm

RUN mkdir -p "$NVM_DIR"; \
    curl -o- \
        "https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh" | \
        bash \
    ; \
    source $NVM_DIR/nvm.sh; \
    nvm install v${NODE_VERSION} \
    nvm alias default v${NODE_VERSION}
