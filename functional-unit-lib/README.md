[![pipeline status](https://git.redmic.net/redmic-server/template/badges/dev/pipeline.svg)](https://git.redmic.net/redmic-server/template/commits/dev) [![coverage report](https://git.redmic.net/redmic-server/template/badges/dev/coverage.svg)](https://git.redmic.net/redmic-server/template/commits/dev)

Este proyecto sirve de guía para la creación de una nueva librería.

1. Antes de importar el proyecto, en el fichero `pom.xml`:
	* Reemplazar `template` por el nombre que se le quiere dar a la librería.
	* Definir convenientemente `name`, `description` y `artifactId`.
	* Definir la versión de `redmic` (en la sección `parent`) con la más reciente.

2. Importar como proyecto maven.

3. Remplazar `template` por el nombre adecuado en la primera línea de este mismo fichero.

4. Añadir las dependencias deseadas.

5. Añadir en `src/test/java/es/redmic/` y `src/main/java/es/redmic/` un nuevo package con el nombre de la librería, como base donde se añadirá el código.

6. Añadir al fichero `pom.xml` del proyecto padre (`es.redmic.lib.libs`), el nombre de la nueva librería.
