FROM node:18-slim
WORKDIR /app
# Instalamos dependencias
COPY package.json ./
RUN npm install
# Copiamos el resto del código (server.js, etc.)
COPY . .
# Exponemos el puerto 3000 que pide el profe
EXPOSE 3000
CMD ["npm", "start"]
