from flask import jsonify, make_response, Blueprint
import numpy as np
from sklearn.metrics.pairwise import cosine_similarity
from database.models.Produto import Produto
from database.models.Categoria import Categoria
from database.models.ProdutoCurtido import ProdutoCurtido
from database.models.Compras import Compras
from database.models.Avaliacao import Avaliacao

recomendacao_bp = Blueprint('recomendacao', __name__)

def get_produto_features(produto_id):
    produtos = list(Produto.select().dicts())
    categorias = {categoria.id: categoria.nome for categoria in Categoria.select()}
    
    features = []
    for produto in produtos:
        categoria = categorias.get(produto['categoria_id'])
        curtidas = ProdutoCurtido.select().where(ProdutoCurtido.produto_id == produto['id']).count()
        compras = Compras.select().where(Compras.produto_id == produto['id']).count()
        avaliacoes = Avaliacao.select().where(Avaliacao.produto_id == produto['id'])
        nota_media = np.mean([avaliacao.nota for avaliacao in avaliacoes]) if avaliacoes.count() > 0 else 0

        features.append([
            produto['id'],
            produto['categoria_id'],
            curtidas,
            compras,
            nota_media
        ])
    
    produto_idx = next(index for (index, d) in enumerate(produtos) if d["id"] == produto_id)
    produto_features = np.array(features)[:, 1:]
    
    return produto_idx, produto_features, produtos

@recomendacao_bp.route('/produto/<int:produto_id>', methods=['GET'])
def recomendacao_conteudo(produto_id):
    produto_idx, produto_features, produtos = get_produto_features(produto_id)
    
    cosine_sim = cosine_similarity([produto_features[produto_idx]], produto_features)
    similar_indices = cosine_sim.argsort()[0][::-1][1:6]  # Excluir o próprio produto e obter os 5 mais similares
    similar_products = [produtos[i] for i in similar_indices]
    
    return make_response(
        jsonify(
            Mensagem='Recomendações de Produtos',
            Produtos=similar_products
        )
    )
