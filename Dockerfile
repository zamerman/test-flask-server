FROM python:3.7.4-alpine3.10
ADD . /app/
WORKDIR /app
RUN ['pip3', 'install', '-r', 'requirements.txt']
CMD ['python3', 'server.py']
