FROM tiangolo/uwsgi-nginx-flask:flask

COPY ./app /app

COPY . /tmp/helloworld/

WORKDIR /tmp/helloworld/

RUN pip install -U pip
RUN pip install -r requirements.txt

COPY /usr/local/lib/python2.7/site-packages/flask_bootstrap/static /app/

RUN python setup.py install

WORKDIR /app

ENV MESSAGE "HelloWorld is running..."


