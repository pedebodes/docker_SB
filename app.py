# compose_flask/app.py
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():

    return 'This Compose/Flask demo has been viewed 9999 '


if __name__ == "__main__":
    app.run(host="0.0.0.0",port=1000, debug=True)