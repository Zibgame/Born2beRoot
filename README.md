# 🧱 Born2beRoot — Projet 42

> Projet d'administration système : installation et sécurisation d'un serveur Linux minimal (Debian), sans interface graphique.

---

## 📋 Objectif du projet

- Créer une machine virtuelle sous **Debian** (recommandé) ou **Rocky Linux**.
- Configurer un serveur sécurisé :
  - Partitions **chiffrées avec LVM**
  - Utilisateur **non-root**
  - Règles de **mot de passe strictes**
  - Configuration **sudo** renforcée
  - **Pare-feu actif**
  - Script **`monitoring.sh`** affichant des infos système toutes les 10 minutes
- Rendre uniquement le fichier `signature.txt` contenant la signature SHA1 du disque `.vdi`.

---

## 🧩 Structure du dépôt


---

## 🚀 Étapes du projet

### 🧱 1. Installation de la machine virtuelle

**Objectif :** créer une VM Debian minimaliste.

```bash
# Mettre à jour le système
sudo apt update && sudo apt upgrade -y
