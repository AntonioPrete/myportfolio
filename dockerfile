# Usa un'immagine di base ufficiale di Node.js
FROM node:14

# Installa Python e node-gyp
RUN apt-get update && apt-get install -y python3 python3-pip
RUN npm install -g node-gyp gulp-cli

# Imposta la directory di lavoro
WORKDIR /app

# Copia i file package.json e package-lock.json
COPY package*.json ./

# Installa le dipendenze
RUN npm install

# Copia il resto dei file dell'applicazione
COPY . .

# Espone la porta su cui l'applicazione sarà in ascolto
EXPOSE 3000

# Comando per avviare l'applicazione
CMD ["gulp"]