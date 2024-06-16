from flask import jsonify, make_response, Blueprint
import numpy as np
from sklearn.metrics.pairwise import cosine_similarity
from database.models.Produto import Produto
from database.models.Categoria import Categoria
from database.models.ProdutoCurtido import ProdutoCurtido
from database.models.Compras import Compras

recomendacao_bp = Blueprint('recomendacao', __name__)


@recomendacao_bp.route('/produto/<int:produto_id>', methods=['GET'])
def recomendacao_conteudo(produto_id):
    pass
