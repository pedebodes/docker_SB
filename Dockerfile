FROM python:2.7-buster
ADD . /code
WORKDIR /code

RUN tar -zxvf config/oraclelinux.tgz && mv oracle /
COPY  config/x86_64-oracle.conf /etc/ld.so.conf.d/
RUN ldconfig
RUN mkdir -p /superbuy/temp/


RUN pip install --upgrade pip
RUN cd repositorios/sbenv/src && chmod +x setup.sh && ./setup.sh
RUN pip install wheel gunicorn

CMD ["/usr/local/bin/gunicorn", "--config", "gunicorn_config.py" , "runserver:application"]