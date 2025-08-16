# Dockerfile
FROM bitnami/spark:3.2.4
WORKDIR /opt/spark-app

# The build context is the root of the repository.
# Therefore, the path to the JAR is relative to the root.
COPY build/libs/*.jar /opt/spark-app/app.jar

ENTRYPOINT ["/opt/bitnami/spark/bin/spark-submit", "--class", "demo.App", "/opt/spark-app/app.jar"]