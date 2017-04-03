FROM tiangolo/uwsgi-nginx-flask:flask

COPY ./app /app

COPY . /tmp/helloworld/

WORKDIR /tmp/helloworld/

RUN pip install -U pip
RUN pip install -r /tmp/requirements.txt

