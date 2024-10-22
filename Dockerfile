# Utiliser une image de base Python légère
FROM python:3.8-slim

# Définir le répertoire de travail à l'intérieur du conteneur
WORKDIR /app

# Copier le fichier requirements.txt pour installer les dépendances
COPY requirements.txt /app/requirements.txt

# Installer les dépendances du projet
RUN pip install --no-cache-dir -r requirements.txt

# Copier seulement les fichiers du répertoire src_api et le modèle
COPY src_api /app/src_api
COPY Octroi_credit_classification_model.pkl /app/

# Exposer le port 8000 pour FastAPI
EXPOSE 8000

# Lancer l'API FastAPI avec Uvicorn
CMD ["uvicorn", "src_api.app:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]