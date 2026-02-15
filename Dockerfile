# Dockerfile
# docker build . -t cavon/jellyfin:10.10.5
# docker tag cavon/jellyfin:10.10.5 cavon/jellyfin:latest
# docker login -u cavon
# docker push cavon/jellyfin:10.10.5
# docker push cavon/jellyfin:latest


# FROM lscr.io/linuxserver/jellyfin:${JELLYFIN_VERSION}
FROM lscr.io/linuxserver/jellyfin:10.10.5


RUN apt update -y
RUN apt install -y fonts-noto-cjk-extra

COPY NotoSansCJKsc-Medium.woff2 /usr/share/fonts/truetype/dejavu/NotoSansCJKsc-Medium.woff2
