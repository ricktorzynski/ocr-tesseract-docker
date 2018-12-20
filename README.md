# OCR Tesseract Docker
Allows upload of an image for OCR using Tesseract and deployed using Docker.

## Getting Started
These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

You will need Docker installed on your system and a command line editor.

```
Docker
Git Bash (on Windows)
Terminal (Linux or Mac)
```

### Installing and Running

You can clone this repository or download a zip file, build and run the Docker image.
```
$ docker build -t ocr-tesseract-docker .
$ docker run -d -p 5000:5000 ocr-tesseract-docker
```

OR you can pull and/or run the Docker image from my repository on Docker Hub

```
docker pull ricktorzynski/ocr-tesseract-docker
docker run -d -p 5000:5000 ricktorzynski/ocr-tesseract-docker
```
Then open up browser to http://localhost:5000

You can use these images to test it - these are photos of a job posting with NLP Logix:

* [Job Posting 1](https://www.torzyn.com/ocr/senior_python_developer_nlplogix1.jpg)
* [Job Posting 2](https://www.torzyn.com/ocr/senior_python_developer_nlplogix2.jpg)
* [Job Posting 3](https://www.torzyn.com/ocr/senior_python_developer_nlplogix3.jpg)

I have also deployed it to Heroku, but free account only allows 512MB of memory and this can be exceeded by the app.  But here is a URL:

https://floating-castle-16480.herokuapp.com/

Again, I can't guarantee that this will work - I will also deploy it on AWS or Azure to test those services.

## Built With
```
Python
Flask
Pytesseract
OpenCV
Bootstrap
Docker
```

## Acknowledgments

I would like to thank Matt Berseth and Robert Marsh of NLP Logix for inspiring me to build this application - I have learned a great deal in a short amount of time.  I can finally begin integrating development and data science in a meaningful way.

