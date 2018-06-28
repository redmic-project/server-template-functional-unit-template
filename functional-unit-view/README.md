[![pipeline status](https://git.redmic.net/redmic-server/template/badges/dev/pipeline.svg)](https://git.redmic.net/redmic-server/template/commits/dev) [![coverage report](https://git.redmic.net/redmic-server/template/badges/dev/coverage.svg)](https://git.redmic.net/redmic-server/template/commits/dev)

Este proyecto sirve de guía para la creación de un nuevo microservicio.

1. Antes de importar el proyecto, en el fichero `pom.xml`:
	* Reemplazar `template` por el nombre que se le quiere dar al microservicio.
	* Definir la versión de `redmic` (en la sección `parent`) con la más reciente.

2. Importar como proyecto maven.

3. Revisar el resto de ficheros del proyecto, remplazando `template` por el nombre adecuado (incluyendo la primera línea de este mismo fichero).

4. Modificar el puerto del microservicio, reemplazando `port` en los ficheros `Dockerfile`, `docker-compose.*.yml` y `src/main/resources/application.properties`.

5. En este último fichero `application.properties`, reemplazar el valor de la propiedad `server.servlet-path` por la ruta deseada (en lugar del valor por defecto `path`).

6. En los ficheros `docker-compose.*.yml`, revisar las redes a las que pertenecerá, la memoria asignada a la pila de Java, etc.

7. Configurar en el fichero `pom.xml` el *spring-boot-starter* adecuado y añadir las dependencias deseadas.
