from peewee import Model, ForeignKeyField, IntegerField, DecimalField
from database.models.Produto import Produto
from database.models.Usuario import Usuario
from . .database import db

class Compras(Model):
    produto_id = ForeignKeyField(Produto, backref='produtos')
    user_id = ForeignKeyField(Usuario, backref='produtos')
    nota = DecimalField(max_digits=10, decimal_places=2) # 1 a 5

    class Meta:
        database = db
