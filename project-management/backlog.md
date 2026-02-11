# 📌 Backlog — Projet Ocoffee (3 jours)

## 🎯 Objectif

Développer un site e-commerce simple en Express (MVC + EJS) avec base PostgreSQL, catalogue produits.

---

# 🗓 Planification globale

* **J1** → Conception + Architecture
* **J2** → Base de données + Dynamisation
* **J3** → Finalisation + Bonus

---

# 🎯 1. Fonctionnel (User Stories)

## US-01 — Page d’accueil

* [ ] Route `GET /`
* [ ] Vue EJS accueil
* [ ] Contenu présentation boutique
* [ ] Lien vers catalogue

## US-02 — Informations boutique

* [ ] Route `GET /about`
* [ ] Vue EJS informations
* [ ] Adresse + contact

## US-03 — Catalogue produits

* [ ] Route `GET /products`
* [ ] Affichage liste produits
* [ ] Segmentation par catégorie

## US-04 — Détail produit

* [ ] Route `GET /products/:id`
* [ ] Vue détail produit
* [ ] Gestion erreur si ID invalide

## US-05 — Bonus : Admin gestion produits

* [ ] Formulaire création produit
* [ ] Route `POST` création
* [ ] Formulaire modification
* [ ] Route `POST` modification
* [ ] Validation des données

---

# 🛠 2. Conception & Architecture (J1)

## Modélisation

* [X] Rédaction des User Stories
* [ ] MCD
* [ ] MLD
* [ ] MPD

## Setup technique

* [ ] Initialisation projet Node
* [ ] Installation Express
* [ ] Configuration EJS
* [ ] Architecture MVC
* [ ] Organisation dossiers
* [ ] Mise en place `.env`
* [ ] Middleware gestion erreurs

## Pages statiques

* [ ] Accueil
* [ ] Informations boutique
* [ ] Catalogue (version statique)

---

# 🗄 3. Base de données (J2)

* [ ] Création base PostgreSQL
* [ ] Script création tables
* [ ] Relations clés étrangères
* [ ] Seed données test
* [ ] Connexion via `pg`
* [ ] Mise en place DataMapper

---

# ⚙️ 4. Dynamisation (J2)

* [ ] Récupération produits depuis BDD
* [ ] Injection données dans vues EJS
* [ ] Détail produit dynamique
* [ ] Gestion erreurs 404
* [ ] Gestion erreurs serveur 500

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

* [ ] Journal J1
* [ ] Journal J2
* [ ] Journal J3
* [ ] Mise à jour README
* [ ] Structure documentation propre

