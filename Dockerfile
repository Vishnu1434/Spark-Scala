FROM bitnami/spark:3.2.4
WORKDIR /opt/spark-app
COPY build/libs/app.jar /opt/spark-app/app.jar
ENTRYPOINT ["/opt/bitnami/spark/bin/spark-submit", "--class", "demo.App", "/opt/spark-app/app.jar"]
