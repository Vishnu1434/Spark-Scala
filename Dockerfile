FROM bitnami/spark:3.2.4
WORKDIR /opt/spark-app

# Copy the fat JAR (matches spark-scala-app-all.jar, etc.)
COPY build/libs/*-all.jar /opt/spark-app/app.jar

ENTRYPOINT ["/opt/bitnami/spark/bin/spark-submit", "--class", "demo.App", "/opt/spark-app/app.jar"]
