from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def home():
    message = os.getenv('MESSAGE', 'Default app MSG')
    return f'<h1>{message}</h1>'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
