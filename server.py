from flask import Flask, request
import os

app = Flask(__name__)

@app.route('/', methods = ['GET'])
def home():
    if request.method == 'GET':
        resp = request.headers["Out"]
        print(resp)
        return input("Powershell command: ")
    else:
        return None

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=3000)