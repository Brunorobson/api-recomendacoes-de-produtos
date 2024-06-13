from flask import Blueprint, make_response, jsonify, request
from database.models.Produto import Produto
from playhouse.shortcuts import model_to_dict

produtos_bp = Blueprint('produtos', __name__)

@produtos_bp.route('/produtos', methods=['GET'])
def get_produtos():
    produtos = list(Produto.select().dicts())
    return make_response(
        jsonify(
            Mensagem='Lista de Produto',
            Produtos=produtos
        )
    )

@produtos_bp.route('/produtos/create', methods=['POST'])
def create_produto():
    data = request.json
    produto = Produto.create(**data)
    return make_response(
        jsonify(
            Mensagem='Produto cadastrado com sucesso',
            Produto=model_to_dict(produto)
        )
    )

@produtos_bp.route('/produto/delete/<int:produto_id>', methods=['DELETE'])
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

@produtos_bp.route('/produto/edit/<int:produto_id>', methods=['PUT'])
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
