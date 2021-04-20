# Importante.

No diretório ( repositorios ) é necessário incluir o diretório do projeto ( Portal ) e do projeto ( sbenv ), conforme dependência de configuração do Dokerfile e no runserver.py


```
projeto

└───repositorios
│   │ ...
│   └───portal
│       │   ...
│   └───sbenv
│       │   ...

```

## Log do Ngnix

O arquivo log.txt é o arquivo de log do ngnix/gunicorn , especificado no arquivo de configuração do gunicorn, inicialmente definido como log de todo e qualquer tipo de evento. 
guia: <https://docs.gunicorn.org/en/stable/settings.html#loglevel>




## Fonte:

- <https://www.digitalocean.com/community/tutorials/how-to-serve-flask-applications-with-gunicorn-and-nginx-on-ubuntu-18-04>

- <https://flask.palletsprojects.com/en/1.1.x/deploying/wsgi-standalone/>
