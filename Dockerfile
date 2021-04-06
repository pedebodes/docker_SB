FROM python:2.7-buster
ADD . /code
WORKDIR /code


RUN apt-get update && apt-get install -y \
    fossil



RUN tar -zxvf config/oraclelinux.tgz && mv oracle /
# RUN cp -r ~/oracle / 
COPY  config/x86_64-oracle.conf /etc/ld.so.conf.d/
RUN ldconfig
RUN mkdir -p /superbuy/temp/


RUN pip install --upgrade pip
RUN cd repositorios/sbenv/src && chmod +x setup.sh && ./setup.sh


CMD ["python", "app.py"]
# RUN cd repositorios/portal/web/ && chmod +x runserver.sh

# CMD ["repositorios/portal/web/runserver.sh"]