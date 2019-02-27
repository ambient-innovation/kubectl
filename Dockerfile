FROM bash:5

ENV KUBECTL_LATEST_RELEASE="v1.9.11"

RUN apk add --update curl \
    && curl -LO https://storage.googleapis.com/kubernetes-release/release/$KUBECTL_LATEST_RELEASE/bin/linux/amd64/kubectl \
    && chmod +x ./kubectl \
    && mv ./kubectl /usr/local/bin/kubectl
