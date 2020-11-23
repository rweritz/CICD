FROM ubuntu:20.04

# To make it easier for build and release pipelines to run apt-get,
# configure apt to not require confirmation (assume the -y argument by default)
ENV DEBIAN_FRONTEND=noninteractive
RUN echo "APT::Get::Assume-Yes \"true\";" > /etc/apt/apt.conf.d/90assumeyes

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
    jq \
    git \
    iputils-ping \
    libcurl4 \
    #    libicu60 \
    libunwind8 \
    netcat \
    libssl1.0 \
    unzip \
    wget

COPY ./install-scripts/ /install-scripts/
RUN ./install-scripts/awscli.sh
RUN ./install-scripts/nodejs.sh
RUN ./install-scripts/dotnetcore.sh
RUN rm -r install-scripts

WORKDIR /azp

COPY ./start.sh .
RUN chmod +x start.sh

CMD ["./start.sh"]