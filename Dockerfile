FROM cimg/python:3.8-node
COPY clean-home /usr/bin/clean-home
COPY get-aws-cli /usr/bin/get-aws-cli
RUN get-aws-cli
COPY get-terraform /usr/bin/get-terraform
RUN get-terraform
COPY get-kubectl /usr/bin/get-kubectl
RUN get-kubectl
COPY get-helm /usr/bin/get-helm
RUN get-helm
COPY get-jq /usr/bin/get-jq
RUN get-jq
COPY get-terragrunt /usr/bin/get-terragrunt
RUN get-terragrunt
COPY show-stats /usr/bin/show-stats
RUN clean-home
