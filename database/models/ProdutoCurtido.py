from peewee import Model, ForeignKeyField
from database.models.Produto import Produto
from database.models.Usuario import Usuario
from . .database import db

class ProdutoCurtido(Model):
    produto_id = ForeignKeyField(Produto, backref='produtos')
    user_id = ForeignKeyField(Usuario, backref='produtos')

    class Meta:
        database = db
