ARG GITPOD_IMAGE=gitpod/workspace-java-21:latest
FROM ${GITPOD_IMAGE}

USER gitpod

ENV NVM_DIR  ~/.nvm
ENV NODE_VERSION 22

# Install nvm with node and npm
RUN brew install node@22