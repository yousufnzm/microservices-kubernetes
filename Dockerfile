FROM openjdk:11.0.2-jre-slim
COPY catalog/target/catalog-0.0.1-SNAPSHOT.jar .
COPY order/target/order-0.0.1-SNAPSHOT.jar .
COPY customer/target/customer-0.0.1-SNAPSHOT.jar .
CMD /usr/bin/java -Xmx400m -Xms400m -Dserver.port=8080 -jar catalog-0.0.1-SNAPSHOT.jar & /usr/bin/java -Xmx400m -Xms400m -Dserver.port=8081 -jar order-0.0.1-SNAPSHOT.jar & /usr/bin/java -Xmx400m -Xms400m -Dserver.port=8082 -jar customer-0.0.1-SNAPSHOT.jar
EXPOSE 8080 8081 8082
