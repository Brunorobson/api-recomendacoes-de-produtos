from peewee import Model, CharField, AutoField
from . .database import db

class Usuario(Model):
    id = AutoField()
    nome = CharField(max_length=45)

    class Meta:
        database = db
