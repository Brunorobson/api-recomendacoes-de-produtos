from peewee import Model, CharField, ForeignKeyField, AutoField, DecimalField,TextField
from database.models.Categoria import Categoria
from . .database import db

class Produto(Model):
    id = AutoField()
    ano = TextField()
    marca = TextField()
    categoria_id = ForeignKeyField(Categoria, backref='categorias')
    nome = CharField(max_length=45)
    preco = DecimalField(max_digits=10, decimal_places=2)

    class Meta:
        database = db
