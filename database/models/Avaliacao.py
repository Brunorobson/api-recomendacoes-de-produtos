from peewee import Model, DecimalField, ForeignKeyField
from database.models.Produto import Produto
from database.models.Usuario import Usuario
from . .database import db

class Avaliacao(Model):
    produto_id = ForeignKeyField(Produto, backref='produtos')
    user_id = ForeignKeyField(Usuario, backref='produtos')
    nota = DecimalField(max_digits=10, decimal_places=2)

    class Meta:
        database = db
