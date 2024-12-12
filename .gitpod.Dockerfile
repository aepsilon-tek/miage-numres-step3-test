ARG GITPOD_IMAGE=gitpod/workspace-java-21:latest
FROM ${GITPOD_IMAGE}


# Install nvm with node and npm
RUN apt install nodejs