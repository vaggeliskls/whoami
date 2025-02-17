FROM alpine:latest

# Install necessary LaTeX packages
RUN apk add --no-cache \
    texlive \
    texlive-latexextra \
    texmf-dist-latexextra \
    ghostscript \
    poppler-utils \
    inotify-tools

# Set working directory
WORKDIR /cv

# Command to auto-compile PDF when .tex file changes
CMD inotifywait -m -e modify latex_cv.tex | while read; do pdflatex latex_cv.tex; done
