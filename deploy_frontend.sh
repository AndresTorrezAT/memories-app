#!/bin/bash

# Directorio donde se clonará el repositorio
FRONTEND_DIR="./frontend/memories-app-frontend"

# Clonamos el repositorio de GitHub
echo "Clonando el repositorio del Frontend..."
git clone https://github.com/AndresTorrezAT/memories-app-frontend.git $FRONTEND_DIR

# Entramos al directorio del frontend
cd $FRONTEND_DIR

# Instalamos las dependencias con yarn
echo "Instalando dependencias..."
yarn install

# Construimos el proyecto para producción
echo "Construyendo el proyecto..."
yarn run build

# # Construimos la imagen de Docker para el frontend
# echo "Construyendo la imagen Docker para el frontend..."
# docker build -t memories-frontend .

# # Ejecutamos el contenedor en el puerto 80
# echo "Ejecutando el contenedor..."
# docker run -d -p 80:80 memories-frontend

echo "Frontend desplegado exitosamente en el contenedor Docker."
