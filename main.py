from flask import Flask
app = Flask(__name__)

@app.route('/')
def index():
    return '<h1>Hello Flask!</h1>'

@app.route('/user/<name>')
def user(name):
    return f'<h2>Hello, {name}!</h2>'

app.add_url_rule('/', 'index', index)