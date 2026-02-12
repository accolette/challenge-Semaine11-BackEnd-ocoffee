# 📌 Backlog — Projet Ocoffee (3 jours)

## 🎯 Objectif

Développer un site simple en Express (MVC + EJS) avec base PostgreSQL, catalogue produits.

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
* [ ] Formulaire de contact
* [ ] Lire la suite pour les contenu de présentation
* [ ] Ajout de photos

## US-06 — Bonus : Admin gestion produits

* [ ] Formulaire création produit
* [ ] Route `POST` création
* [ ] Formulaire modification
* [ ] Route `POST` modification
* [ ] Validation des données

## US-07 — Bonus : Ajustements DA intégration
* [ ] Page détail d'un produit à retravailler
* [ ] Voir la difference des images entre navigateurs

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
* [X] Organisation dossiers
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
* [x] Script création tables
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

* [ ] CRUD Admin complet
* [ ] Validation côté serveur
* [ ] Nettoyage code
* [ ] Vérification architecture
* [ ] README finalisé
* [ ] Carnet de bord complété

---

# 📚 Documentation

* [X] Journal J1
* [X] Journal J2
* [ ] Journal J3
* [X] Mise à jour README
* [X] Structure documentation propre

