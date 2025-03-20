# Usa un'immagine base di Nginx
FROM nginx:alpine

# Copia i file del sito nella directory di Nginx
COPY . /usr/share/nginx/html

# Espone la porta 80
EXPOSE 80