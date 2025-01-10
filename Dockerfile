# Utilise l'image officielle Nginx comme base
FROM nginxinc/nginx-unprivileged

# Copie des fichiers de configuration personnalisés (si nécessaire)
# Par exemple, si vous avez un fichier nginx.conf local
# COPY nginx.conf /etc/nginx/nginx.conf

# Copie du contenu du site web dans le répertoire par défaut de Nginx
# Assurez-vous que les fichiers HTML, CSS, JS, etc. sont dans le répertoire ./html
COPY . /usr/share/nginx/html

# Expose le port 80 pour le serveur web
EXPOSE 80

# Démarre Nginx (la commande CMD est déjà définie dans l'image Nginx officielle)
CMD ["nginx", "-g", "daemon off;"]