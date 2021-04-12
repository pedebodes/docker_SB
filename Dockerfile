FROM python:2.7-buster
ADD . /code
WORKDIR /code


# RUN apt-get update && apt-get install -y \
#     fossil


RUN tar -zxvf config/oraclelinux.tgz && mv oracle /
COPY  config/x86_64-oracle.conf /etc/ld.so.conf.d/
RUN ldconfig
RUN mkdir -p /superbuy/temp/


RUN pip install --upgrade pip
RUN cd repositorios/sbenv/src && chmod +x setup.sh && ./setup.sh
RUN pip install wheel gunicorn

COPY . .
EXPOSE 8080

# CMD ["python", "app.py"]

# CMD ["/usr/local/bin/gunicorn", "--config", "gunicorn_config.py" , "repositorios.portal.web.runserver:app"]
CMD ["/usr/local/bin/gunicorn", "--config", "gunicorn_config.py" , "runserver:app"]


# Roberto Amorim16:10
# https://www.digitalocean.com/community/tutorials/how-to-serve-flask-applications-with-gunicorn-and-nginx-on-ubuntu-18-04
# Roberto Amorim16:13
# https://flask.palletsprojects.com/en/1.1.x/deploying/wsgi-standalone/
