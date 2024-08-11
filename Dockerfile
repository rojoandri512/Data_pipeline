# Utiliser une image de base officielle Python
FROM python:3.11-slim

# Définir le répertoire de travail à l'intérieur du conteneur
WORKDIR /app

# Copier le fichier requirements.txt dans le répertoire de travail
COPY requirements.txt .

# Installer les dépendances Python
RUN pip install --no-cache-dir -r requirements.txt

# Copier le reste de l'application dans le répertoire de travail
COPY . .

# Définir la commande par défaut pour exécuter le script Python
CMD ["python", "main.py"]