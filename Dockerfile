FROM python:3.6

ENV PYTHONUNBUFFERED 1

RUN mkdir /code
WORKDIR /code

ADD requirements.txt /code/
RUN pip install --upgrade pip
RUN pip install setuptools --upgrade

# RUN apk update
# RUN apk add make automake gcc g++ subversion python3-dev

RUN pip install -r requirements.txt --no-cache-dir


ADD . /code/
# CMD sh ./runserver.sh
