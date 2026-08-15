FROM ghcr.io/containerpak/gtk3:main

LABEL org.opencontainers.image.source="https://github.com/Containerpak/transmission"

RUN apt-get update && \
    apt-get install -y --no-install-recommends transmission-gtk && \
    cpak-clean-junk

COPY transmission.desktop /usr/share/applications/transmission.desktop
COPY icon.png /usr/share/icons/hicolor/128x128/apps/transmission.png

