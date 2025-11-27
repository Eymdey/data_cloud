# Présentation des Services Cloud sur Google Cloud Platform (GCP)

## Introduction
Le Cloud Computing a révolutionné la manière dont les entreprises déploient et gèrent leurs infrastructures informatiques. Google Cloud Platform (GCP) offre une vaste gamme de services classés principalement en trois modèles : IaaS (Infrastructure as a Service), CaaS (Container as a Service) et PaaS (Platform as a Service). Ce document présente ces trois modèles, leurs caractéristiques sur GCP, et leurs cas d'usage.

---

## 1. Infrastructure as a Service (IaaS)

### Définition
L'IaaS est le modèle le plus flexible, offrant un accès direct aux ressources informatiques fondamentales (serveurs virtuels, stockage, réseaux) sur une base de paiement à l'usage. L'utilisateur gère le système d'exploitation, les applications et les données, tandis que Google gère le matériel physique.

### Services Phares sur GCP
*   **Google Compute Engine (GCE)** : Le service de machines virtuelles (VM) de Google. Il permet de lancer des instances Linux ou Windows à la demande.
*   **Persistent Disk** : Stockage bloc performant et fiable pour les instances GCE.
*   **Virtual Private Cloud (VPC)** : Réseau virtuel global permettant de connecter les ressources GCP de manière isolée et sécurisée.

### Avantages
*   **Contrôle total** : Vous avez la main sur l'OS et la configuration réseau.
*   **Flexibilité** : Choix précis des types de machines (CPU/RAM) et redimensionnement facile.
*   **Migration** : Idéal pour le "Lift and Shift" d'applications existantes vers le cloud sans réécriture.

### Cas d'usage
*   Hébergement de sites web traditionnels ou d'applications legacy.
*   Bases de données autogérées (ex: installer MySQL sur une VM).
*   Environnements de test et de développement nécessitant des configurations OS spécifiques.

---

## 2. Container as a Service (CaaS)

### Définition
Le CaaS se situe entre l'IaaS et le PaaS. Il permet de gérer et de déployer des applications conteneurisées (généralement avec Docker) sans se soucier de l'infrastructure sous-jacente des machines hôtes. L'orchestration est souvent automatisée.

### Services Phares sur GCP
*   **Google Kubernetes Engine (GKE)** : Service Kubernetes managé. GKE automatise le déploiement, la mise à l'échelle et la gestion des applications conteneurisées. C'est la référence du marché pour l'orchestration de conteneurs.
*   **Cloud Run** : Service entièrement managé pour exécuter des conteneurs sans état (stateless). Il abstrait totalement l'infrastructure (Serverless pour conteneurs).

### Avantages
*   **Portabilité** : Les conteneurs fonctionnent de la même manière en local et dans le cloud.
*   **Efficacité** : Meilleure utilisation des ressources par rapport aux VM classiques.
*   **Scalabilité** : GKE et Cloud Run gèrent l'autoscaling de manière très efficace.

### Cas d'usage
*   Architectures microservices.
*   Applications nécessitant une mise à l'échelle rapide et fréquente.
*   Environnements CI/CD modernes.

---

## 3. Platform as a Service (PaaS)

### Définition
Le PaaS fournit une plateforme complète (matériel + logiciel) pour développer, exécuter et gérer des applications sans la complexité de la construction et de la maintenance de l'infrastructure. L'utilisateur apporte son code, et la plateforme gère tout le reste (runtime, middleware, OS, virtualisation, serveurs, stockage, réseau).

### Services Phares sur GCP
*   **Google App Engine (GAE)** : La plateforme historique de Google pour héberger des applications web et mobiles. Elle supporte plusieurs langages (Python, Java, Node.js, Go, etc.).
*   **Cloud Functions** : Service de "Functions as a Service" (FaaS) permettant d'exécuter de petits morceaux de code en réponse à des événements (HTTP, Cloud Storage, Pub/Sub).

### Avantages
*   **Productivité** : Les développeurs se concentrent uniquement sur le code, pas sur l'ops.
*   **Zéro maintenance** : Pas de patchs de sécurité OS ou de gestion de serveurs à effectuer.
*   **Time-to-market** : Déploiement très rapide de nouvelles fonctionnalités.

### Cas d'usage
*   Applications web et mobiles standards.
*   Backends d'API RESTful.
*   Traitements basés sur des événements (ex: redimensionner une image dès qu'elle est uploadée).

---

## Conclusion
Le choix entre IaaS, CaaS et PaaS sur Google Cloud Platform dépend des besoins spécifiques du projet :
*   Choisissez **IaaS (Compute Engine)** pour un contrôle maximal et la migration d'applications existantes.
*   Choisissez **CaaS (GKE/Cloud Run)** pour les microservices, la portabilité et les applications modernes.
*   Choisissez **PaaS (App Engine)** pour une productivité maximale et un focus total sur le code.
