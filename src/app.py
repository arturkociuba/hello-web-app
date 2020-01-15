import os
from flask import Flask
app = Flask(__name__)

@app.route("/hello")
def hello():
    return "Hello World!"

if __name__ == "__main__":
    port = os.environ['PORT']
    app.run(host='0.0.0.0', port=port)
