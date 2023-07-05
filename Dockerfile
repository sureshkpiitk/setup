# start with a base image
FROM python:3.7.3-slim


# configurations
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime
RUN echo "deb http://archive.debian.org/debian stretch main" > /etc/apt/sources.list

# install apt requirements
RUN apt-get update && apt-get install -y --no-install-recommends \
    apt-utils \
    build-essential \
    curl \
    git \
    gnupg \
    nano \
    nginx \
    python3-pip \
    ssh \
    supervisor \
    vim \
    && rm -rf /var/lib/apt/lists/*

COPY . /home/app/

WORKDIR /home/app/

CMD python main.py