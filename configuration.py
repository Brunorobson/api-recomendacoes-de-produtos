from database.database import db
from database.models.Usuario import Usuario
from database.models.Categoria import Categoria
from database.models.Produto import Produto
from database.models.ProdutoCurtido import ProdutoCurtido
from database.models.Avaliacao import Avaliacao

def configure_db():
    db.connect()
    db.create_tables([Usuario, Categoria, Produto, ProdutoCurtido, Avaliacao])