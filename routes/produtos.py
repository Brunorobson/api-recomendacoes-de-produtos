from flask import Blueprint, jsonify, request, make_response
from database.models.Produto import Produto
from database.models.Categoria import Categoria
from peewee import fn
from database.models.Compras import Compras
from playhouse.shortcuts import model_to_dict

produtos_bp = Blueprint('produtos', __name__)

@produtos_bp.route('/produtos', methods=['GET'])
def get_produtos():
    # Conta o número de compras por produto e ordena por essa contagem em ordem decrescente, limitando os resultados a 9 produtos
    query = (Produto
             .select(Produto, Categoria.nome.alias('categoria_nome'), fn.COUNT(Compras.produto_id).alias('num_compras'))
             .join(Categoria, on=(Produto.categoria_id == Categoria.id))
             .join(Compras, on=(Compras.produto_id == Produto.id))
             .group_by(Produto)
             .order_by(fn.COUNT(Compras.produto_id).desc())
             .limit(9)
             .dicts())
    
    produtos_list = []
    for produto in query:
        produto_dict = dict(produto)
        produtos_list.append(produto_dict)
    
    return jsonify(produtos_list)

@produtos_bp.route('/produto/<int:produto_id>', methods=['GET'])
def get_produto(produto_id):
    # Realiza a junção com a tabela Categoria e filtra pelo ID do produto
    query = (Produto
             .select(Produto, Categoria.nome.alias('categoria_nome'))
             .join(Categoria, on=(Produto.categoria_id == Categoria.id))
             .where(Produto.id == produto_id)
             .dicts())
    
    produto = query[0]  # Apenas um produto será retornado se o ID for único
    
    return jsonify(produto)




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
