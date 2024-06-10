from flask import Flask, make_response, jsonify, request
from bd import produtos as bd_produtos

app = Flask(__name__)

@app.route('/produtos', methods=['GET'])
def get_produtos():
    return make_response(
        jsonify(bd_produtos)
    )

@app.route('/produtos/create', methods=['POST'])
def create_produto():
    produto = request.json
    return produto


if __name__ == '__main__':
    app.run(debug=True)