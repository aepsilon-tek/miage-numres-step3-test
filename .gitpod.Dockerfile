ARG GITPOD_IMAGE=gitpod/workspace-base:latest
FROM ${GITPOD_IMAGE}


USER gitpod

RUN sudo apt-get -q update && \
    sudo apt install -yq openjdk-21-jdk