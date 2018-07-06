# Template

| Metrics | Master | Develop |
|:-:|:-:|:-:|
| CI status | [![pipeline status](https://gitlab.com/redmic-project/server/template/badges/master/pipeline.svg)](https://gitlab.com/redmic-project/server/template/commits/master) | [![pipeline status](https://gitlab.com/redmic-project/server/template/badges/dev/pipeline.svg)](https://gitlab.com/redmic-project/server/template/commits/dev) |
| Total test coverage | [![coverage report](https://gitlab.com/redmic-project/server/template/badges/master/coverage.svg)](https://gitlab.com/redmic-project/server/template/commits/master) | [![coverage report](https://gitlab.com/redmic-project/server/template/badges/dev/coverage.svg)](https://gitlab.com/redmic-project/server/template/commits/dev) |
| Library test coverage | [![coverage report](https://gitlab.com/redmic-project/server/template/badges/master/coverage.svg?job=maven-build-lib)](https://gitlab.com/redmic-project/server/template/commits/master) | [![coverage report](https://gitlab.com/redmic-project/server/template/badges/dev/coverage.svg?job=maven-build-lib)](https://gitlab.com/redmic-project/server/template/commits/dev) |
| Commands test coverage | [![coverage report](https://gitlab.com/redmic-project/server/template/badges/master/coverage.svg?job=maven-build-commands)](https://gitlab.com/redmic-project/server/template/commits/master) | [![coverage report](https://gitlab.com/redmic-project/server/template/badges/dev/coverage.svg?job=maven-build-commands)](https://gitlab.com/redmic-project/server/template/commits/dev) |
| View test coverage | [![coverage report](https://gitlab.com/redmic-project/server/template/badges/master/coverage.svg?job=maven-build-view)](https://gitlab.com/redmic-project/server/template/commits/master) | [![coverage report](https://gitlab.com/redmic-project/server/template/badges/dev/coverage.svg?job=maven-build-view)](https://gitlab.com/redmic-project/server/template/commits/dev) |

Este proyecto sirve de guía para la creación de una nueva unidad funcional (microservicios `commands` y `view` y `lib` asociada).

1. Antes de importar el proyecto, en el fichero `pom.xml`:
	* Reemplazar `template` por el nombre que se le quiere dar a la unidad funcional.
	* Definir la versión de `redmic` (x.y.z) con la más reciente.
	* Definir la versión de Spring deseada.

2. En los directorios `template-*`:
	* Renombrarlos con el nombre elegido en el `pom.xml`.
	* En sus respectivos `pom.xml` reemplazar `template` por el nombre elegido en el `pom.xml` global.
	* En general, consultar los proyectos de [plantilla de microservicio](https://gitlab.com/redmic-project/server/template/microservice-template) y [plantilla de librería](https://gitlab.com/redmic-project/server/template/library-template), obviando los detalles de despliegue e integración continua de cada uno (estas tareas se delegan al padre en este caso).

3. Importar como proyecto maven.

4. Revisar el resto de ficheros del proyecto, remplazando `template` por el nombre adecuado (incluyendo la primera línea de este mismo fichero).

5. Modificar los puertos de los microservicios, reemplazando `port1` y `port2` en el fichero `.env` y definirlos respectivamente en el fichero `src/main/resources/application.properties` de *commands* y *view*.

6. En los ficheros `docker-compose.*.yml`, revisar las redes a las que pertenecerán, los volúmenes a añadir, etc. Además, se puede definir la memoria disponible para cada microservicio, usando la variable de entorno *JAVA_OPTS* (por ejemplo, `JAVA_OPTS=-Xmx512m -Xss512m`).

7. Configurar en el fichero `pom.xml` el *spring-boot-starter* adecuado para cada microservicio y añadir las dependencias deseadas.

8. Actualizar la tabla inicial de estado, eliminar estas instrucciones y documentar adecuadamente.

* Para más información acceder a [Guía para desarrollar una unidad funcional](https://gitlab.com/redmic-project/server/template/functional-unit-template/wikis/home)
