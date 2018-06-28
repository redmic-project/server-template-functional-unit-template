# Functional unit

[![pipeline status](https://git.redmic.net/redmic-server/functional-unit/badges/dev/pipeline.svg)](https://git.redmic.net/redmic-server/functional-unit/commits/dev) [![coverage report](https://git.redmic.net/redmic-server/functional-unit/badges/dev/coverage.svg)](https://git.redmic.net/redmic-server/functional-unit/commits/dev)

## Coverage:

  * lib: ![coverage](https://git.redmic.net/redmic-server/functional-unit/badges/dev/coverage.svg?job=maven-build-lib)
  * commands: ![coverage](https://git.redmic.net/redmic-server/functional-unit/badges/dev/coverage.svg?job=maven-build-commands)
  * view: ![coverage](https://git.redmic.net/redmic-server/functional-unit/badges/dev/coverage.svg?job=maven-build-view)

Este proyecto sirve de guía para la creación de una nueva unidad funcional (microservicios `commands` y `view` y `lib` asociada).

1. Antes de importar el proyecto, en el fichero `pom.xml`:
	* Reemplazar `functional-unit` por el nombre que se le quiere dar a la unidad funcional.
	* Definir la versión de `redmic` (x.y.z) con la más reciente.
	* Definir la versión de Spring deseada.

2. En los directorios `functional-unit-*`:
	* Renombrarlos con el nombre elegido en el `pom.xml`.
	* En sus respectivos `pom.xml` reemplazar `functional-unit` por el nombre elegido en el `pom.xml` global.
	* En general, consultar los proyectos de [plantilla de microservicio](https://git.redmic.net/redmic-server/microservice-template) y [plantilla de librería](https://git.redmic.net/redmic-server/library-template), obviando los detalles de despliegue e integración continua de cada uno (estas tareas se delegan al padre en este caso).

3. Importar como proyecto maven.

4. Revisar el resto de ficheros del proyecto, remplazando `functional-unit` por el nombre adecuado (incluyendo la primera línea de este mismo fichero).

5. Modificar los puertos de los microservicios, reemplazando `port1` y `port2` en los ficheros `Dockerfile`, `.env` y definirlos respectivamente en el fichero `src/main/resources/application.properties` de *commands* y *view*.

6. En los ficheros `docker-compose.*.yml`, revisar las redes a las que pertenecerán. Además, se puede definir la memoria disponible para cada microservicio, usando la variable de entorno *JAVA_OPTS* (por ejemplo, `JAVA_OPTS=-Xmx512m -Xss512m`).

7. Configurar en el fichero `pom.xml` el *spring-boot-starter* adecuado para cada microservicio y añadir las dependencias deseadas.

* Para más información acceder a [Guía para desarrollar una unidad funcional](https://git.redmic.net/redmic-server/functional-unit-template/wikis/home)
