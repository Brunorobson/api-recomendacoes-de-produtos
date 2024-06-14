from flask import Blueprint, make_response, jsonify
from database.models.Categoria import Categoria

categoria_bp = Blueprint('categoria', __name__)

@categoria_bp.route('/categorias', methods=['GET'])
def get_produtos():
    categorias = list(Categoria.select().dicts())
    return make_response(
        jsonify(
            Mensagem='Lista de Produto',
            Produtos=categorias
        )
    )