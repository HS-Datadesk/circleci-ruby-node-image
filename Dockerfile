FROM circleci/ruby:2.5.0

USER root

ENV NODE_VERSION="10.15.3"
ENV NODE_ZIP="node-v$NODE_VERSION-linux-x64.tar.xz"

RUN wget -P downloads https://nodejs.org/dist/v$NODE_VERSION/$NODE_ZIP && \
    tar -C /usr/local --strip-components 1 -xJf downloads/$NODE_ZIP && \
    rm -rf downloads

USER circleci
