# 📌 Backlog — Projet Ocoffee (3 jours)

## 🎯 Objectif

Développer un site simple en Express (MVC + EJS) avec base PostgreSQL et catalogue produits.

---

# 🗓 Planification globale

* **J1** → Conception + Architecture  
* **J2** → Base de données + Dynamisation  
* **J3** → Finalisation + Bonus  

---

# 🎯 1. Fonctionnel (User Stories)

## US-01 — Page d’accueil

* [X] Route `GET /`
* [X] Vue EJS accueil
* [X] Lien vers boutique
* [X] Lien vers catalogue

## US-02 — Informations boutique

* [X] Route `GET /shop`
* [X] Vue EJS informations

## US-03 — Catalogue produits

* [X] Route `GET /catalogue`
* [X] Affichage liste produits

## US-04 — Détail produit

* [X] Route `GET /catalogue/produit:id`
* [X] Vue détail produit
* [X] Gestion erreur si ID invalide

## US-05 — Bonus : Boutique : Map et formulaire de contact

* [X] Adresse + map
* [X] Lire la suite pour le contenu de présentation
* [X] Ajout de photos
* [X] Formulaire de contact
* [X] Route `POST` soumission du message
* [X] Sauvegarde des données du message dans la BDD

## US-06 — Bonus : Vue Admin et gestion produits

* [X] Route Admin et vue pour consulter les messages clients
* [ ] Bouton "lire plus de messages clients" à ajouter
* [ ] Formulaire création produit (commencé mais non achevé 🙂)
  * [ ] Requête de chargement des pays depuis la BDD et affichage des options correspondantes dans le formulaire
  * [ ] Idem pour les détails et caractéristiques principales du produit
  * [ ] Gestion des erreurs de saisie
* [ ] Route `POST` création
* [ ] Formulaire modification
* [ ] Route `POST` modification
* [ ] Validation des données
* [ ] Login d’accès pour accéder à la page admin

## US-07 — Bonus : Ajustements DA intégration

* [ ] Page détail d’un produit à retravailler
* [X] Vérification des différences d’affichage des images entre navigateurs

---

# 🛠 2. Conception & Architecture (J1)

## Modélisation

* [X] Rédaction des User Stories
* [X] MCD
* [X] MLD
* [X] MPD

## Setup technique

* [X] Initialisation projet Node
* [X] Installation Express
* [X] Configuration EJS
* [X] Architecture MVC
* [X] Organisation des dossiers
* [X] Mise en place `.env`
* [X] Middleware gestion erreurs
* [X] Création des partials des pages

## Pages statiques

* [X] Accueil
* [X] Informations boutique
* [X] Catalogue (version statique)

---

# 🗄 3. Base de données (J2)

* [X] Création base PostgreSQL
* [X] Script création tables
* [X] Relations clés étrangères
* [X] Seed données test
* [X] Connexion via `pg`
* [X] Mise en place DataMapper

---

# ⚙️ 4. Dynamisation (J2)

* [X] Récupération produits depuis BDD
* [X] Injection données dans vues EJS
* [X] Détail produit dynamique
* [X] Gestion erreurs 404
* [X] Gestion erreurs serveur 500
* [X] Ajout des données complètes des produits

---

# 🚀 5. Finalisation (J3)

* [X] Création de la BDD messages clients
* [X] Validation côté serveur
* [X] Injection messages formulaire dans la BDD
* [X] Page admin pour consulter les messages clients
* [ ] CRUD Admin complet
* [X] Nettoyage code
* [X] Vérification architecture
* [X] README finalisé
* [X] Carnet de bord complété

---

# 🗓️ 6. ToDo post sprint du projet

* [ ] Vérification sécurité du formulaire plus solide
* [ ] CRUD Admin complet (US-6)
* [ ] Faire évoluer le dataMapper vers l'ORM Sequelize vu par la suite en cours
* [ ] Création d'un filtre pour affichage des produits selon caracteristiques principales.

---

# 📚 Documentation

* [X] Journal J1
* [X] Journal J2
* [X] Journal J3
* [X] Mise à jour README
* [X] Structure documentation propre
