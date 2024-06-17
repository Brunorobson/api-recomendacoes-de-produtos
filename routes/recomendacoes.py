from flask import jsonify, Blueprint
import numpy as np
from sklearn.neighbors import NearestNeighbors
from sklearn.metrics.pairwise import cosine_similarity
from database.models.Produto import Produto
from database.models.Categoria import Categoria
from database.models.Compras import Compras
from database.models.Usuario import Usuario

recomendacao_bp = Blueprint('recomendacao', __name__)

@recomendacao_bp.route('/recomendacoes/<int:produto_id>', methods=['GET'])
def recomendacoes_colaborativas(produto_id):
    # Coletar dados de compras
    compras = list(Compras.select().dicts())
    
    # Obter lista de usuários e produtos únicos
    usuarios = list(Usuario.select().dicts())
    produtos = list(Produto.select().dicts())
    
    usuario_ids = [usuario['id'] for usuario in usuarios]
    produto_ids = [produto['id'] for produto in produtos]
    
    # Criar a matriz usuário-produto
    user_product_matrix = np.zeros((len(usuario_ids), len(produto_ids)))
    
    for compra in compras:
        user_idx = usuario_ids.index(compra['user_id'])
        product_idx = produto_ids.index(compra['produto_id'])
        user_product_matrix[user_idx, product_idx] = float(compra['nota'])
    
    # Calcular a similaridade entre os usuários
    user_similarity = cosine_similarity(user_product_matrix)
    
    # Obter o produto principal
    produto_principal = Produto.get_by_id(produto_id)
    
    # Encontrar os usuários que compraram o produto principal
    usuarios_compraram_produto = [compra['user_id'] for compra in compras if compra['produto_id'] == produto_id]
    
    # Filtrar produtos comprados pelos usuários que compraram o produto principal
    recommended_products = []
    for user_id in usuarios_compraram_produto:
        user_idx = usuario_ids.index(user_id)
        user_ratings = user_product_matrix[user_idx]
        for product_idx, rating in enumerate(user_ratings):
            if rating > 0 and produto_ids[product_idx] != produto_id:
                recommended_products.append(produto_ids[product_idx])
    
    # Filtrar por categoria
    produtos_mesma_categoria = (Produto
                                .select()
                                .where(Produto.categoria_id == produto_principal.categoria_id)
                                .where(Produto.id != produto_principal.id)
                                .dicts())
    
    # Filtrar por marca
    produtos_mesma_marca = (Produto
                            .select()
                            .where(Produto.marca == produto_principal.marca)
                            .where(Produto.id != produto_principal.id)
                            .dicts())
    
    # Obter produtos comprados juntos
    produtos_comprados_juntos = (Compras
                                 .select(Compras.produto_id)
                                 .join(Produto)
                                 .where(Compras.produto_id != produto_id)
                                 .distinct()
                                 .dicts())
    
    # Combinar todas as recomendações
    all_recommended_products = list(set(recommended_products + 
                                        [produto['id'] for produto in produtos_mesma_categoria] + 
                                        [produto['id'] for produto in produtos_mesma_marca] + 
                                        [compra['produto_id'] for compra in produtos_comprados_juntos]))
    
    # Obter detalhes dos produtos recomendados
    produtos_recomendados = (Produto
                             .select(
                                 Produto.id,
                                 Produto.marca,
                                 Produto.ano,
                                 Produto.nome,
                                 Produto.preco
                             )
                             .where(Produto.id.in_(all_recommended_products))
                             .dicts())
    
    # Extrair características dos produtos recomendados para k-NN
    produtos_recomendados_list = list(produtos_recomendados)
    
    # Mapeamento de marcas para números
    marcas = list(set(produto['marca'] for produto in produtos_recomendados_list))
    marca_to_num = {marca: i for i, marca in enumerate(marcas)}
    
    # Ajustar as features com os números mapeados
    features = [[marca_to_num[produto['marca']]] for produto in produtos_recomendados_list]
    
    # Aplicar k-NN para encontrar os 9 produtos mais similares
    knn = NearestNeighbors(n_neighbors=9, metric='cosine')
    knn.fit(features)
    target_feature = [[marca_to_num[produto_principal.marca]]]
    distances, indices = knn.kneighbors(target_feature)
    
    # Selecionar os 9 produtos mais similares
    final_recommendations = [produtos_recomendados_list[i] for i in indices[0]]
    
    return jsonify(final_recommendations)
