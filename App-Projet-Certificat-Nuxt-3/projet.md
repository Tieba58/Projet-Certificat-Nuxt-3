# Projet Certificat Nuxt 3 - Intégration FakeStore API

## 📋 Contexte du projet

Vous devez développer une application e-commerce complète en utilisant **Nuxt 3** et l'API **FakeStore** (https://fakestoreapi.com/). Ce projet évaluera vos compétences en développement full-stack avec Nuxt 3, incluant la gestion des APIs, le routage, la gestion d'état et l'interface utilisateur.

## 🎯 Objectifs pédagogiques

- Maîtriser les composables Nuxt 3 (`$fetch`, `useFetch`, `useLazyFetch`)
- Implémenter une architecture de routes dynamiques
- Gérer l'état global de l'application
- Créer une interface utilisateur responsive et moderne
- Manipuler les données via les APIs server-side de Nuxt

## 📊 APIs à intégrer (FakeStore)

Vous devez utiliser **TOUTES** les APIs suivantes de FakeStore :

### 1. Produits
- `GET /products` - Liste de tous les produits
- `GET /products/{id}` - Détail d'un produit
- `GET /products/categories` - Liste des catégories
- `GET /products/category/{category}` - Produits par catégorie
- `POST /products` - Ajouter un produit (simulation)
- `PUT /products/{id}` - Modifier un produit (simulation)
- `DELETE /products/{id}` - Supprimer un produit (simulation)

### 2. Panier
- `GET /carts` - Tous les paniers
- `GET /carts/{id}` - Panier spécifique
- `GET /carts/user/{userId}` - Paniers d'un utilisateur
- `POST /carts` - Créer un panier
- `PUT /carts/{id}` - Modifier un panier
- `DELETE /carts/{id}` - Supprimer un panier

### 3. Utilisateurs
- `GET /users` - Liste des utilisateurs
- `GET /users/{id}` - Utilisateur spécifique
- `POST /users` - Créer un utilisateur
- `PUT /users/{id}` - Modifier un utilisateur
- `DELETE /users/{id}` - Supprimer un utilisateur

### 4. Authentification
- `POST /auth/login` - Connexion utilisateur

## 🛠️ Exigences techniques

### Architecture Nuxt 3
- **OBLIGATOIRE** : Utiliser les APIs server-side de Nuxt (`/server/api/`)
- Créer des endpoints dans `~/server/api/` qui feront les appels vers FakeStore
- Utiliser les composables Nuxt côté client (`useFetch`, `$fetch`)
- Implémenter le middleware d'authentification
- Gérer les erreurs avec `createError()`

### Structure minimale requise
```
project/
├── server/
│   └── api/
│       ├── products/
│       ├── carts/
│       ├── users/
│       └── auth/
├── pages/
├── components/
├── composables/
└── stores/ (Pinia)
```

### Fonctionnalités obligatoires

#### 🏪 Catalogue produits
- Page d'accueil avec liste des produits
- Filtrage par catégories
- Page détail produit avec toutes les informations
- Système de recherche

#### 🛒 Gestion du panier
- Ajouter/supprimer des produits au panier
- Modifier les quantités
- Persistance du panier (état global)
- Calcul du total

#### 👤 Gestion utilisateurs
- Formulaire d'inscription/connexion
- Profil utilisateur
- Historique des commandes (paniers)

#### 🔐 Authentification
- Système de connexion fonctionnel
- Protection des routes privées
- Gestion des tokens JWT

#### 📱 Interface utilisateur
- Design responsive (mobile-first)
- Interface moderne et intuitive
- Gestion des états de chargement
- Affichage des erreurs utilisateur

## 🎨 Liberté créative

Vous avez le choix pour :
- **Framework CSS** : Tailwind CSS, Bootstrap, UnoCSS, ou CSS pur
- **Template de départ** : Nuxt UI, Nuxt UI Pro, ou template custom
- **Icônes** : Heroicons, Lucide, FontAwesome...
- **Design** : Thème sombre/clair, couleurs, typography

## 📋 Livrables attendus

### 1. Code source
- Repository Git avec commits réguliers
- README.md avec instructions d'installation
- Code commenté et organisé

### 2. Fonctionnalités démontrées
- Application déployée (Netlify/Vercel recommandé)
- Toutes les APIs FakeStore intégrées
- Interface responsive fonctionnelle

### 3. Documentation technique
- Architecture du projet
- Choix techniques justifiés
- Guide d'utilisation

## 🏆 Critères d'évaluation

### Excellence technique (40%)
- Utilisation correcte des composables Nuxt 3
- Architecture des APIs server-side
- Gestion d'état avec Pinia
- Gestion des erreurs

### Fonctionnalités (30%)
- Intégration complète des APIs FakeStore
- Fonctionnalités utilisateur fluides
- Authentification opérationnelle

### Interface utilisateur (20%)
- Design responsive et moderne
- Expérience utilisateur optimale
- Gestion des états de chargement

### Code quality (10%)
- Structure du code
- Lisibilité et commentaires
- Bonnes pratiques Nuxt 3

## ⏰ Contraintes

- **Durée** : 2 semaines
- **Technologies imposées** : Nuxt 3, FakeStore API
- **Déploiement** : Application accessible en ligne
- **APIs** : Passage obligatoire par les server APIs de Nuxt

## 💡 Conseils

1. Commencez par créer les endpoints server-side
2. Testez chaque API individuellement
3. Implementez la gestion d'état progressivement
4. Soignez l'UX avec les states de loading
5. Documentez vos choix techniques

---

**Bonne chance ! 🚀**

*Ce projet vous permettra de démontrer votre maîtrise complète de Nuxt 3 dans un contexte réaliste d'application e-commerce.*
