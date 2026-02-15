
ARG JELLYFIN_VERSION=latest

FROM lscr.io/linuxserver/jellyfin:${JELLYFIN_VERSION}

RUN apt update -y
RUN apt install -y fonts-noto-cjk-extra

COPY NotoSansCJKsc-Medium.woff2 /usr/share/fonts/truetype/dejavu/NotoSansCJKsc-Medium.woff2
