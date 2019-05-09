FROM java:8
EXPOSE 8280

VOLUME /tmp
ADD target/renren-fast.jar /app.jar
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-jar","/app.jar"]
