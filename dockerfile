FROM tiangolo/uwsgi-nginx-flask:flask

COPY ./app /app

COPY . /tmp/helloworld/

WORKDIR /tmp/helloworld/

RUN pip install -U pip
RUN pip install -r requirements.txt

RUN python setup.py install

WORKDIR /app

ENV MESSAGE "HelloWorld is running..."


