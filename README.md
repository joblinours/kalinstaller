# kali_insertion.sh

## Description
`kali_insertion.sh` est un script Bash qui permet de gérer l'ajout et la suppression du dépôt Kali Linux sur une machine Debian. Le script gère automatiquement l'ajout de la clé GPG et la mise à jour de la liste des paquets.

## Fonctionnalités
- Ajoute le dépôt Kali Linux et importe la clé GPG.
- Met à jour la liste des paquets après l'ajout.
- Supprime le dépôt Kali Linux et met à jour la liste des paquets.

## Prérequis
- Une distribution Debian ou compatible.
- Accès administrateur (équivalent de `sudo`).

## Usage
Le script accepte une option obligatoire :

### Ajouter le dépôt Kali Linux
Pour ajouter le dépôt Kali Linux :
```bash
sudo ./kali_insertion.sh -y
```

### Supprimer le dépôt Kali Linux
Pour supprimer le dépôt Kali Linux :
```bash
sudo ./kali_insertion.sh -n
```

## Arguments
- `-y` : Ajoute le dépôt Kali Linux et effectue une mise à jour des paquets.
- `-n` : Supprime le dépôt Kali Linux et effectue une mise à jour des paquets.

## Exemple
### Ajout du dépôt Kali Linux
```bash
sudo ./kali_insertion.sh -y
```
Sortie attendue :
```
Ajout du dépôt Kali...
Ajout de la clé GPG...
Mise à jour de la liste des paquets...
Dépôt Kali ajouté avec succès.
```

### Suppression du dépôt Kali Linux
```bash
sudo ./kali_insertion.sh -n
```
Sortie attendue :
```
Suppression du dépôt Kali...
Mise à jour de la liste des paquets...
Dépôt Kali supprimé avec succès.
```

## Notes
- Si le dépôt Kali n'est pas présent lors de l'exécution avec `-n`, le script affichera un message informatif.
- L'utilisation de ce script peut provoquer des conflits de versions si des paquets Kali sont installés sur une distribution Debian standard. Soyez prudent.

## Licence
Ce script est fourni "tel quel" sans garantie. Vous êtes libre de l'utiliser et/ou de le modifier.
