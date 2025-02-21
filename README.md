# 📄 whoami

This repository hosts my personal CV in LaTeX. It includes a custom Make-based workflow and a Docker Compose setup to automatically build the PDF and watch for changes.

# Prerequisites 📦
- [Docker](https://docs.docker.com/engine/install/) >= 20

## Features 🚀
- LaTeX-based CV – Clean, professional, and highly customizable.
- Automated Build – Uses a custom Make image to compile the LaTeX file into a PDF.
- Live Watch & Rebuild – Automatically recompiles the PDF on file changes with Docker Compose.
- Track Changes Easily – Open the generated PDF with any viewer to see updates in real time.


## Usage 🛠️

### Start Watching & Build the CV
Run the following command to build the CV and automatically watch for changes:

```
docker compose up -d
```

### Stop the Watch Process
```
docker compose down
```

## View the PDF

Once built, open the generated cv.pdf file with any PDF viewer to track changes.

> If you face issues (write permissions) with pdf viewers you can try any visual code pdf viewer plugin or any browser

## 📚 References

- [Devops docker projects](https://github.com/vaggeliskls/devops-docker-projects)