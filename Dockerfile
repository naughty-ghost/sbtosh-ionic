FROM ubuntu:22.04

RUN apt update && \
    apt install -y \
        nodejs \
        npm \
        curl \
        xsel && \
    npm install -g \
        @ionic/cli \
        n \
        serve&& \
    n lts && \
    apt purge -y nodejs npm

CMD [ "bash" ]