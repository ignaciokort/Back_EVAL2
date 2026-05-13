FROM node:18-slim
WORKDIR /app
# Copiamos los archivos de Node.js que se ven en tu repo
COPY package.json .
RUN npm install
COPY . .
# Exponemos el puerto que usa el server.js (revisa si es el 3000 o 5000)
EXPOSE 3000
CMD ["node", "server.js"]
