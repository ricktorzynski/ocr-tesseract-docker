FROM ricktorzynski/ocr-tesseract-docker
MAINTAINER Gene Guido "nogasgofast@gmail.com"
RUN apt update && apt install -y uwsgi uwsgi-plugin-python
COPY . /app
WORKDIR /app
EXPOSE 8080
EXPOSE 9191
ENTRYPOINT ["uwsgi", \
  "--plugin", "python", \
  "--http-socket", "0.0.0.0:8080", \
  "--wsgi-file", "wsgi.py", \
  "--callable", "app", \
  "--master", \
  "--processes", "4", \
  "--threads", "2", \
  "--stats", "0.0.0.0:9191"]
