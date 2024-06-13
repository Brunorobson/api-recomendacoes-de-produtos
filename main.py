from flask import Flask
from configuration import configure_db
from routes.produtos import produtos_bp  # Importando o Blueprint do arquivo produtos.py

app = Flask(__name__)
app.config['JSON_SORT_KEYS'] = False

# Registrar o Blueprint
app.register_blueprint(produtos_bp)

configure_db()

if __name__ == '__main__':
    app.run(debug=True)
