# Refresh
I am using this wonderful example form ricktorzynski to incrementally improve this container and learn more about how to properly deploy/modify docker images.

To get this container loaded currently it must be built.
```
git clone https://github.com/nogasgofast/ocr-tesseract-docker.git
cd ocr-tesseract-docker/
docker build . -t ocr-uwsgi-flask:test2
docker run -d -p 8080:80/tcp ocr-uwsgi-flask:test2
```
running curl http://localhost:8080
should produce some html output. You know it's working then!
<h1 class="title">OCR Using Tesseract via Docker</h1>

## NOTES
1. This setup is not compatible with alpine linux as some of the python
packages are not supported there yet.
2. I've paired down the requirements file as much as possible.
3. Not much was required in the Docker file as most of the configuration is
taken care of by the base image used tiangolo/uwsgi-nginx-flask:python3.7 at
the time of this writing.

+++++ Original Text +++++

# OCR Tesseract Docker
Allows upload of an image for OCR using Tesseract and deployed using Docker.  This uses Flask, a light weight web server framework - but for development purposes only.  OpenCV is used to reduce noise in the image for better processing by pytesseract.  Uploads on AWS are limited to 2MB - below are 3 images of a job posting taken on a Pixel 2XL phone, and reduced in size using Gimp by adjusting quality.

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

You can use these images to test it - these are photos of a job posting:

* [Job Posting 1](https://www.torzyn.com/ocr/senior_python_developer_nlplogix1_sm.jpg)
* [Job Posting 2](https://www.torzyn.com/ocr/senior_python_developer_nlplogix2_sm.jpg)
* [Job Posting 3](https://www.torzyn.com/ocr/senior_python_developer_nlplogix3_sm.jpg)

## Deployed to AWS Elastic Beanstalk

This app has been deployed to AWS Elastic Beanstalk
http://ocr-tesseract-docker-aws-dev.us-east-1.elasticbeanstalk.com/

## Built With
```
Python
Flask
Pytesseract
OpenCV
Bootstrap
Docker
```

## Resources

Here are some helpful resources on the web that I used for this project.

* [Deep Learning based Text Recognition (OCR) using Tesseract and OpenCV](https://www.learnopencv.com/deep-learning-based-text-recognition-ocr-using-tesseract-and-opencv/)
* [Using Tesseract OCR with Python](https://www.pyimagesearch.com/2017/07/10/using-tesseract-ocr-python/)
* [Dockerize your Flask Application](https://runnable.com/docker/python/dockerize-your-flask-application)
* [Dockerize Simple Flask App](http://containertutorials.com/docker-compose/flask-simple-app.html)

## Acknowledgments

I would like to thank Matt Berseth and Robert Marsh of NLP Logix for inspiring me to build this application - I have learned a great deal in a short amount of time.  I can finally begin integrating development and data science in a meaningful way.
