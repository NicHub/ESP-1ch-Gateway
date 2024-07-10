#!/bin/bash

# Répertoire contenant les fichiers .ino
ino_dir="."

# Parcourir tous les fichiers .ino dans le répertoire
for file in "$ino_dir"/*.ino; do
    # Vérifier si le fichier existe
    if [ -f "$file" ]; then
        # Obtenir le nom du fichier sans l'extension
        filename=$(basename "$file" .ino)
        # Construire le chemin du nouveau fichier .cpp
        cpp_file="$ino_dir/$filename.cpp"

        # Copier le contenu du fichier .ino dans le nouveau fichier .cpp
        cat "$file" > "$cpp_file"

        echo "Fichier $file converti en $cpp_file"
    fi
done