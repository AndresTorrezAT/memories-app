# Usa una imagen oficial de Node.js como base para la construcción
FROM node:16 AS build

# Define el directorio de trabajo
WORKDIR /app

# Copia el package.json y yarn.lock (si existe) para aprovechar la caché de las dependencias
COPY package.json yarn.lock ./

# Instala las dependencias del proyecto
RUN yarn install

# Copia todo el código del proyecto al contenedor
COPY . .

# Construye la aplicación React
RUN yarn run build

# Usa una imagen de NGINX para servir los archivos estáticos
FROM nginx:alpine

# Copia los archivos estáticos generados en la carpeta dist al contenedor NGINX
COPY --from=build /app/build /usr/share/nginx/html

# Expón el puerto 80 (el puerto por defecto de NGINX)
EXPOSE 80

# Comando para iniciar NGINX
CMD ["nginx", "-g", "daemon off;"]
