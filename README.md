#LEMP Docker Image Configuration

Crea el ambiente de configuracion para poder un server con linux, nginx, mysql y php. Desde cero y un composer.phar para instalar algún software.

Si se quiere utilizar composer.phar por favor entrar al container de php y ejecutarlo desde ahí

Tiene la configuracion para inicializar tres maquninas de docker:
1. web: con nginx
2. php: con php:5.6 (actualizable al 7)
3. db: con mysql:5.7

Pasos si es la primera vez:
1. docker-compose up -d

Nota: Colocar las credenciales correctas a la base de datos (Según está en el docker-compose.yml)
Nota: Colocar los puertos disponibles (web:9090 y db:33060 por default)
Nota: Si surgen problemas de permisos por favor correr este comando: sudo chown :www-data -R code
