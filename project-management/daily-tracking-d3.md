# 📘 Project Log — Daily Tracking - D3

---

## 🗓 Date

`2026-02-13`

## 🎯 Projet

Nom du projet : Ocoffee

---

## 🔗 Références

Backlog : [Lien ici](./backlog.md)  
User Story :

* US-05 — Bonus : Boutique : Map et formulaire de contact  
* US-06 — Bonus : Vue Admin et gestion produits  

---

# 1️⃣ Objectif(s) du jour

> Ce que je devais livrer ou faire avancer aujourd’hui.

* Créer un formulaire de contact client  
* Créer une interface admin pour l’ajout de produits et consulter l’historique des messages clients  

---

# 2️⃣ Travail réalisé

> Actions concrètes effectuées.

### 🔹 Dev

* Création de la BDD `client_message`  
* Création du formulaire et de la vue pour message de contact bien reçu  
* Gestion des routes pour la soumission du formulaire  
* Gestion des erreurs de saisie du formulaire côté serveur (uniquement champs vides pour l’instant — vérifier la sécurité plus sérieusement par la suite)  
* Redirection avec remplissage des champs correctement complétés  
* Création de la route et de la vue interface administrateur  
* Dynamisation de la partie derniers messages reçus, listés du plus récent au plus ancien  
* Work in progress : création de l’interface de saisie des informations pour l’ajout d’un nouveau produit  

### 🔹 Gestion / Organisation

* Daily tracking Day 3  
* Mise à jour du backlog  

---

# 3️⃣ Avancement

* ✅ Tâches terminées : US 1 à 5  
* 🟡 En cours : US 6  
* ⏳ Restant à faire : US 6 à 7  

---

# 4️⃣ Problèmes / Blocages

* 1 : Dans le formulaire de contact, problème pour la récupération des données du `POST`, l’objet `req.body` était vide  

---

# 5️⃣ Analyse & Solutions

> Comment j’ai traité le problème / décisions prises.

* 1 : Aide avec ChatGPT : oubli de l’attribut `name` dans les inputs  

---

# 🔎 Commentaire libre

* Bonne avancée sur le bonus aujourd’hui. Frustration de devoir arrêter avant la finalisation de la partie ajout de produit via l’interface admin, car j’étais sur une bonne lancée. À reprendre plus tard en dehors du timing du projet 🔥  
