FROM circleci/ruby:2.3.5

USER root

ENV NODE_VERSION="8.9.4"
ENV NODE_ZIP="node-v$NODE_VERSION-linux-x64.tar.xz"

RUN wget -P downloads https://nodejs.org/dist/v$NODE_VERSION/$NODE_ZIP && \
    tar -C /usr/local --strip-components 1 -xJf downloads/$NODE_ZIP && \
    rm -rf downloads

USER circleci
