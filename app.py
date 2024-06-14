from flask import Flask
import random

app = Flask(__name__)

@app.route("/")
def main():
    return ("the app is online")

@app.route("/index")
def hello():
    return "Hello"

@app.route("/moreload")
def moreload():
    array = [random.randint(0, 999) for _ in range(1000)]
    return str(sum(array))