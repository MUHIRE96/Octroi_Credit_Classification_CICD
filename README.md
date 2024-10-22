# Octroi_Credit_Classification_CICD
Modèle de machine learning pour octroi de crédits :

Développement d’un modèle de machine learning pour prédire si un crédit sera accordé ou non, en utilisant des données financières et personnelles (revenu, historique de crédit, etc.).
Entraînement et validation du modèle pour obtenir des prédictions précises.
Développement d’une API avec FastAPI :

Création d’une API avec FastAPI permettant de servir les prédictions du modèle ML.
Mise en place de différents endpoints, y compris un endpoint de prédiction où les utilisateurs soumettent des données, et un endpoint de test pour vérifier l'état de l'API.
Intégration du modèle ML dans l'API pour générer des prédictions en temps réel à partir des requêtes utilisateurs.
Conteneurisation avec Docker :

Création d'un Dockerfile pour conteneuriser l'application FastAPI et ses dépendances, incluant le modèle ML.
Gestion des environnements dans un conteneur Docker afin de garantir une portabilité et une cohérence lors de l'exécution de l'application sur différentes machines.
Test local de l'image Docker pour s'assurer que l'API fonctionne correctement dans un environnement isolé.
Déploiement sur Docker Hub :

Poussée de l'image Docker sur Docker Hub pour rendre l'image accessible depuis n'importe quel environnement.
Utilisation de Docker Hub comme registre d'images pour faciliter le partage et le déploiement de l'application.
Mise en place d’un pipeline CI/CD avec GitHub Actions :

Automatisation complète du processus de build et de déploiement avec GitHub Actions.
Le pipeline est configuré pour s'exécuter à chaque push sur la branche principale (main), avec les étapes suivantes :
Clonage du dépôt pour récupérer le code.
Connexion à Docker Hub via les secrets GitHub pour authentification.
Construction de l'image Docker avec les nouvelles modifications du code.
Tests automatisés pour s'assurer que l'image est valide et fonctionnelle.
Poussée de l'image Docker mise à jour sur Docker Hub si tous les tests réussissent, garantissant une livraison continue.
