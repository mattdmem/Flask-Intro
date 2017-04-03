FROM tiangolo/uwsgi-nginx-flask:flask

COPY ./app /app

COPY . /tmp/helloworld/

WORKDIR /tmp/helloworld/

RUN pip install -U pip
RUN pip install -r requirements.txt

RUN python setup.py install

WORKDIR /usr/local/lib/python2.7/site-packages/flask_bootstrap

RUN mkdir -p /app/static/bootstrap

RUN cp -R static/* /app/static/bootstrap/

WORKDIR /app

ENV MESSAGE "HelloWorld is running..."


