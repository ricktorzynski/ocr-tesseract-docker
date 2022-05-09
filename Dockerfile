FROM ubuntu:xenial
MAINTAINER Rick Torzynski "ricktorzynski@gmail.com"

# Set timezone:
RUN ln -snf /usr/share/zoneinfo/$CONTAINER_TIMEZONE /etc/localtime && echo $CONTAINER_TIMEZONE > /etc/timezone
# Install dependencies:
RUN apt-get update && apt-get install -y tzdata

RUN apt-get update -y
RUN apt-get install -y software-properties-common gcc
RUN add-apt-repository -y ppa:deadsnakes/ppa
RUN apt-get update
RUN apt-get install -y python3.8 python3-distutils python3-pip python3-apt
RUN apt update && apt install -y libsm6 libxext6
RUN apt-get -y install python3-pip
RUN apt-get -y install tesseract-ocr
RUN apt-get install tesseract-ocr-all -y
COPY . /app
WORKDIR /app
RUN pip3 install pillow
RUN pip3 install pytesseract
RUN pip3 install opencv-contrib-python
RUN pip3 install -r requirements.txt
ENTRYPOINT ["python3"]
CMD ["app.py"]