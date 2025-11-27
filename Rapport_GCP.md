# Rapport : Analyse des modèles de services Cloud sur Google Cloud Platform (GCP)

**Étudiant :** Dorian Marty
**Module :** Cloud Computing & Architecture  
**Date :** 27 Novembre 2025  

---

## Introduction

Dans le cadre de notre cursus sur les technologies du Cloud Computing, ce dossier a pour objectif de présenter et d'analyser les trois principaux modèles de services disponibles sur le marché, en prenant pour exemple l'écosystème Google Cloud Platform (GCP). Ces modèles — IaaS, CaaS et PaaS — répondent à des besoins d'infrastructure et de développement distincts. Nous détaillerons ici leurs caractéristiques, les services associés proposés par Google, ainsi que leurs cas d'usage privilégiés.

## 1. Infrastructure as a Service (IaaS) : La base flexible

### Concept
L'Infrastructure as a Service (IaaS) représente le niveau le plus fondamental du Cloud. Il s'agit de louer des ressources informatiques brutes (puissance de calcul, stockage, réseau) à la demande. Contrairement à une infrastructure sur site (On-Premise), nous ne gérons pas le matériel physique, mais nous conservons la responsabilité totale du système d'exploitation, des middlewares et des applications.

### Implémentation sur GCP
Sur Google Cloud, l'IaaS est principalement incarné par **Google Compute Engine (GCE)**. Ce service nous permet de déployer des machines virtuelles (VM) hautement configurables (Linux ou Windows). Il est souvent couplé au **Persistent Disk** pour le stockage et au **VPC (Virtual Private Cloud)** pour la gestion réseau sécurisée.

### Pourquoi choisir l'IaaS ?
Ce modèle est idéal pour les entreprises souhaitant migrer des applications existantes ("Lift and Shift") sans avoir à réécrire le code. Il offre un contrôle granulaire sur l'environnement, permettant d'installer des logiciels spécifiques ou de configurer le noyau de l'OS selon les besoins précis du projet.

## 2. Container as a Service (CaaS) : L'ère de la modernisation

### Concept
Le CaaS est une évolution naturelle qui se situe entre l'IaaS et le PaaS. Il permet de déployer des applications packagées sous forme de conteneurs (via Docker notamment). L'avantage majeur est l'abstraction de l'OS hôte : on ne gère plus des serveurs, mais des conteneurs légers et portables.

### Implémentation sur GCP
Google, étant le créateur de Kubernetes, propose **Google Kubernetes Engine (GKE)**, la solution de référence pour l'orchestration de conteneurs. Pour des besoins plus simples, **Cloud Run** permet de déployer des conteneurs en mode "Serverless", où l'infrastructure est totalement invisible et gérée par Google.

### Pourquoi choisir le CaaS ?
Le CaaS est incontournable pour les architectures modernes en microservices. Il facilite grandement la mise en place de pipelines CI/CD (Intégration et Déploiement Continus) et offre une scalabilité (mise à l'échelle) bien plus réactive que les machines virtuelles classiques.

## 3. Platform as a Service (PaaS) : Focus sur le code

### Concept
Le PaaS est le modèle qui offre le plus haut niveau d'abstraction pour les développeurs. Ici, toute la couche infrastructure (serveurs, OS, réseau, maintenance) est gérée par le fournisseur Cloud. L'étudiant ou le développeur n'a plus qu'à fournir son code source, et la plateforme s'occupe de l'exécuter et de le rendre disponible.

### Implémentation sur GCP
Le service historique de Google, **App Engine**, est l'exemple type du PaaS. Il supporte nativement des langages comme Python, Java ou Node.js. On retrouve également **Cloud Functions** (FaaS) pour exécuter des fonctions unitaires déclenchées par des événements.

### Pourquoi choisir le PaaS ?
C'est la solution idéale pour accélérer le "Time-to-Market". Elle permet aux équipes de se concentrer à 100% sur la logique métier et le développement, sans perdre de temps sur la maintenance des serveurs ou les mises à jour de sécurité.

## Conclusion

En conclusion, Google Cloud Platform offre une palette complète de services adaptés à chaque étape de maturité d'un projet informatique.
*   Si le besoin de contrôle est total, nous nous orienterons vers l'**IaaS (Compute Engine)**.
*   Pour des applications modernes et portables, le **CaaS (GKE)** sera privilégié.
*   Enfin, pour un développement rapide sans contraintes opérationnelles, le **PaaS (App Engine)** reste la solution la plus efficace.

Ce travail d'analyse nous a permis de mieux comprendre comment architecturer des solutions robustes en choisissant le bon niveau d'abstraction selon les contraintes techniques et business.
