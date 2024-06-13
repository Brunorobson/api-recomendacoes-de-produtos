from flask import Flask, make_response, jsonify, request
from configuration import configure_db
from database.models.Produto import Produto
from playhouse.shortcuts import model_to_dict

app = Flask(__name__)
app.config['JSON_SORT_KEYS'] = False

@app.route('/produtos', methods=['GET'])
def get_produtos():
    produtos = list(Produto.select().dicts())
    return make_response(
        jsonify(
            Mensagem='Lista de Produto',
            Produtos=produtos
        )
    )

@app.route('/produtos/create', methods=['POST'])
def create_produto():
    data = request.json
    produto = Produto.create(**data)
    return make_response(
        jsonify(
            Mensagem='Produto cadastrado com sucesso',
            Produto=model_to_dict(produto)
        )
    )

@app.route('/produto/delete/<int:produto_id>', methods=['DELETE'])
def delete_produto(produto_id):
    query = Produto.delete().where(Produto.id == produto_id)
    if query.execute():
        return make_response(
            jsonify(
                Mensagem='Produto excluído com sucesso'
            )
        )
    else:
        return make_response(
            jsonify(
                Mensagem='Produto não encontrado'
            ), 404
        )

@app.route('/produto/edit/<int:produto_id>', methods=['PUT'])
def edit_produto(produto_id):
    data = request.json
    query = Produto.update(**data).where(Produto.id == produto_id)
    if query.execute():
        produto = Produto.get_by_id(produto_id)
        return make_response(
            jsonify(
                Mensagem='Produto atualizado com sucesso',
                Produto=model_to_dict(produto)
            )
        )
    else:
        return make_response(
            jsonify(
                Mensagem='Produto não encontrado'
            ), 404
        )

configure_db()
if __name__ == '__main__':
    app.run(debug=True)
