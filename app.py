from flask import Flask, render_template

app = Flask(__name__, template_folder='./templates')

@app.route('/', methods = ['GET'])
def hello_world():
   return render_template('main.html')

@app.route('/ping',methods = ['GET'])
def ping():
   return "pong"

if __name__ == "__main__":
   app.run(host='0.0.0.0', port=5000)