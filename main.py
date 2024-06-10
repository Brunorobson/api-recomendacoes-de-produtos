from flask import Flask, make_response, jsonify, request
from bd import produtos as bd_produtos

app = Flask(__name__)
app.config['JSON_SORT_KEYS'] = False

@app.route('/produtos', methods=['GET'])
def get_produtos():
    return make_response(
        jsonify(
            Mensagem='Lista de Produto',
            Produtos=bd_produtos
        )
    )

@app.route('/produtos/create', methods=['POST'])
def create_produto():
    produto = request.json
    bd_produtos.append(produto)
    return make_response(
        jsonify(
            Mensagem='Produto cadastrado com sucesso',
            Produto=produto
        )
    )

@app.route('/produto/delete/<int:produto_id>', methods=['DELETE'])
def delete_produto(produto_id):
    global bd_produtos
    produto = next((p for p in bd_produtos if p["id"] == produto_id), None)
    if produto:
        bd_produtos = [p for p in bd_produtos if p["id"] != produto_id]
        return make_response(
            jsonify(
                Mensagem='Produto excluído com sucesso',
                Produto=produto
            )
        )
    else:
        return make_response(
            jsonify(
                Mensagem='Produto não encontrado'
            ),
            404
        )

@app.route('/produto/edit/<int:produto_id>', methods=['PUT'])
def edit_produto(produto_id):
    produto = request.json
    index = next((i for i, p in enumerate(bd_produtos) if p["id"] == produto_id), None)
    if index is not None:
        bd_produtos[index] = {**bd_produtos[index], **produto}
        return make_response(
            jsonify(
                Mensagem='Produto atualizado com sucesso',
                Produto=bd_produtos[index]
            )
        )
    else:
        return make_response(
            jsonify(
                Mensagem='Produto não encontrado'
            ),
            404
        )

if __name__ == '__main__':
    app.run(debug=True)
