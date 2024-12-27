#!/bin/bash

# Chemin du fichier de sources Kali
depot_file="/etc/apt/sources.list.d/kali.list"
key_url="https://archive.kali.org/archive-key.asc"

# Fonction pour ajouter le dépôt Kali
add_kali_repo() {
    echo "Ajout du dépôt Kali..."
    echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" | sudo tee "$depot_file"
    echo "Ajout de la clé GPG..."
    wget -q -O - "$key_url" | sudo apt-key add -
    echo "Mise à jour de la liste des paquets..."
    sudo apt update
    echo "Dépôt Kali ajouté avec succès."
}

# Fonction pour supprimer le dépôt Kali
remove_kali_repo() {
    if [ -f "$depot_file" ]; then
        echo "Suppression du dépôt Kali..."
        sudo rm "$depot_file"
        echo "Mise à jour de la liste des paquets..."
        sudo apt update
        echo "Dépôt Kali supprimé avec succès."
    else
        echo "Le dépôt Kali n'est pas présent sur cette machine."
    fi
}

# Validation des arguments
if [ "$#" -ne 1 ]; then
    echo "Usage : $0 -y | -n"
    exit 1
fi

case "$1" in
    -y)
        add_kali_repo
        ;;
    -n)
        remove_kali_repo
        ;;
    *)
        echo "Option invalide : $1"
        echo "Usage : $0 -y | -n"
        exit 1
        ;;
esac

exit 0
