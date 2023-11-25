# Usa la imagen oficial de NGINX
FROM nginx

# Copia los archivos estáticos al directorio de trabajo de NGINX
COPY index.html /usr/share/nginx/html

# Expone el puerto 80 para que pueda ser accesible desde fuera del contenedor
EXPOSE 80

# Comando para iniciar NGINX en primer plano al iniciar el contenedor
CMD ["nginx", "-g", "daemon off;"]