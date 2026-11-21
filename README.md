<div align="center">

# 🛡️ CTI PHISHING YARA REPOSITORY
### *Proactive Threat Intelligence & Phishing Kit Detection*

[![Status](https://img.shields.io/badge/Status-Active%20Research-00ffcc?style=for-the-badge&logo=cyberFoot&logoColor=black)](https://github.com/RVenoth91)
[![Author](https://img.shields.io/badge/Author-Venoth%20RAJASEKARAN-blueviolet?style=for-the-badge&logo=github&logoColor=white)](https://github.com/RVenoth91)
[![WorldSkills](https://img.shields.io/badge/WorldSkills-Bronze%20Medalist-ffcc00?style=for-the-badge&logo=awesomewm&logoColor=black)](https://portfoliovenothrajasekaran.lovable.app)
[![YARA](https://img.shields.io/badge/Engine-YARA%20Rules-ff3366?style=for-the-badge&logo=security&logoColor=white)](https://virustotal.github.io/yara/)

</div>

---

## 🎯 À propos de ce dépôt

Ce dépôt héberge mes premières règles de détection **YARA** conçues dans le cadre de ma montée en compétences en **Cyber Threat Intelligence (CTI)**. L'objectif est d'analyser les structures, les indices d'exfiltration et les patterns des kits de phishing modernes pour automatiser leur repérage.

> *« Anticiper la menace, analyser les briques d'infrastructure, et bloquer les attaques avant qu'elles ne frappent. »*

---

## 📂 Index des Règles Actives

| Fichier de Règle | Cible / Menace Détectée | Description Technique | Statut |
| :--- | :--- | :--- | :--- |
| [`detect_phishing_m365.yar`](./detect_phishing_m365.yar) | **Microsoft 365** | Détection multi-critères : usurpation de marque, formulaires d'authentification piégés et endpoints d'exfiltration (Telegram / scripts distants). | ✅ **Validé & Testé** |

---

## 🔬 Anatomie de la Règle (Exemple : M365)

Nos règles reposent sur une approche chirurgicale pour éviter les faux positifs :
1. **Métadonnées traçables** : Auteur, contexte et versioning rigoureux.
2. **Strings contextuelles** : Combinaison de la marque visuelle (`Microsoft`), des champs de formulaires (`input type="password"`) et des vecteurs de fuite de données (`api.telegram.org`).
3. **Conditions strictes** : Analyse de la taille du fichier (`filesize < 500KB`) couplée à une logique booléenne avancée.

---

## 👨‍💻 À propos du créateur

* **Nom :** Venoth RAJASEKARAN
* **Parcours :** Diplômé BTS SIO SISR (2025) | Médaillé de bronze WorldSkills Île-de-France 2025 (Cloud Technologies)
* **Stack :** Linux, Windows, Docker, Keycloak, OIDC, CTI & Cloud Security.
* **Portfolio :** [portfoliovenothrajasekaran.lovable.app](https://portfoliovenothrajasekaran.lovable.app)

---

<div align="center">
  <sub>Built with precision and passion for Cyber Threat Intelligence. 🚀</sub>
</div>
