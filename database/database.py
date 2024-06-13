from peewee import MySQLDatabase
import pymysql

pymysql.install_as_MySQLdb()

# Configure o banco de dados com as credenciais corretas
db = MySQLDatabase(
    'recomendacoes_produtos',  # Nome do banco de dados
    user='root',        # Usuário do banco de dados
    password='Alohomora@123',      # Senha do banco de dados
    host='localhost',          # Host do banco de dados
    port=3306                  # Porta do banco de dados
)
