from peewee import Model, CharField, AutoField
from . .database import db

class Categoria(Model):
    id = AutoField()
    nome = CharField()

    class Meta:
        database = db
