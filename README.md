# README


## Le contexte

Nous travaillons pour une banque, ils nous demandent une plateforme minimaliste. Pour chaques exercices, il doit y avoir un "admin side" permettant de realiser toutes les actions CRUD's et les actions supplementaires que tu devras developper.

### Exercice 00

Crée un utilisateur Il doit pouvoir se logger Il doit avoir un nom, un prenom, un sexe, une addresse

### Exercice 01

Un utilisateur possède plusieurs comptes bancaires. Un compte doit avoir un identifiant unique composé de 16 chiffres, et un libellé. Dans son dashboard l'utilisateur à la liste de ses comptes, ainsi qu'un bouton lui permettant d'en crée

###  Exercice 02

Un compte bancaire possède des transactions. Chaque transaction peut etre entrante ou sortante, comporte un montant et un libellé Dans la liste des comptes dans le Dashboard l'argent du compte est calculé à l'aide des transactions. Pour chaque compte affiché sur le dashboard les trois dernières transactions doivent etre listés Seul un admin peut créer des transactions

### Exercice 03

Creation de litige En cas de problème sur une transaction, un litige avec un motif doit lui etre assigné Un litige possède un identifiant au format XX-000... "X etant une lettre en majuscule et 000 un nombre" et un status (Nouveau, en cours de traitement, traité) Tant qu'un litige n'est pas traité la transaction n'est pas compté dans le total du compte Un litige est attribué manuellement à une transaction via le panel "admin"

### Exercice 04

Crée un type de compte "Epargne" Possibiliter de gérer les types d'epargne depuis le coté "admin" Chaque epargne possède un libellé et un taux d'interet Un bouton coté admin permettant de recevoir les interets sur le dit compte doit etre disponible du coté "admin" L'admin crée les types d'epargnes. Un utilisateur ne peut choisir que parmis les epargnes disponible.

### Exercice05

Creation d'un conseillé Un conseillé à nom et un prénom Un conseillé peut-etre attribué à des utilisateurs, des comptes, des transactions ou des litiges

### Exercice06

Exposer en JSON toutes les actions permettant de lister les utilisateurs, les comptes par utilisateur, les transaction par compte et les conseillés (Ne pas faire d'authentification API)

### Listing (non-exaustive) des vues

User Side Connection Inscription Dashboard utilisateur Liste des transactions par compte de l'utilisateur Liste des litiges de l'utilisateur Creation de compte bancaire (peu importe le type) Liste des Conseillés Lié directement ou indirectement a l'utilisateur Liste de tous les conseillés Admin Side Liste des utilisateurs Liste des comptes Liste des comptes pour un utilisateur choisi Liste des transactions pour un compte choisi Liste des litiges Liste des conseillés Liste des attributions pour un conseillé donné