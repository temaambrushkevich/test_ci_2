from flask import Flask, request

app = Flask(__name__)

@app.route("/calc")
def calc():
        arg1 = request.args.get('arg1')
        arg2 = request.args.get('arg2')
        operation = request.args.get('operation')

        if (arg1.replace('.','',1).isdigit()==0 or arg2.replace('.','',1).isdigit()==0):
                return "wrong numbers :("
        else:
                if operation=="add":
                        return str(float(arg1)+float(arg2))
                elif operation=="dif":
                        return str(float(arg1)-float(arg2))
                elif operation=="mult":
                        return str(float(arg1)*float(arg2))
                elif operation=="div":
                        return str(float(arg1)/float(arg2))
                else:
                        return "incorrect operation :("


if __name__ == "__main__":
        app.run(host='0.0.0.0', debug=False)