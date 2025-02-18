# syntax=docker/dockerfile:1
FROM debian:bookworm-slim

# Install TeX Live and required utilities
RUN apt-get update && apt-get install -y \
    texlive-latex-extra \
    texlive-fonts-recommended \
    texlive-fonts-extra \  
    ghostscript \
    poppler-utils \
    inotify-tools \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

COPY cv.tex .

CMD ["sh", "-c", "while inotifywait -e modify cv.tex; do pdflatex cv.tex; done"]
