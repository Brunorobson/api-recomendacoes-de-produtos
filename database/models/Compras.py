from peewee import Model, ForeignKeyField, IntegerField
from database.models.Produto import Produto
from database.models.Usuario import Usuario
from . .database import db

class Compras(Model):
    produto_id = ForeignKeyField(Produto, backref='produtos')
    user_id = ForeignKeyField(Usuario, backref='produtos')
    nota = IntegerField()

    class Meta:
        database = db
