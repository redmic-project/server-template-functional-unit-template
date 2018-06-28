FROM redmic/redmic-server

ENV SERVICE=undefined-service

COPY /*/dist/*.jar ./

EXPOSE port1 port2

ENTRYPOINT java $JAVA_OPTS \
	-Djava.security.egd=file:/dev/./urandom \
	-Dlogging.level.org.springframework=${LOG_LEVEL} \
	-jar /opt/redmic/${SERVICE}.jar
