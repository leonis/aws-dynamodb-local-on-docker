FROM openjdk:8-jre-alpine
MAINTAINER devops@leonisand.co

RUN apk add --no-cache --virtual .dependency curl && \
    curl -L http://dynamodb-local.s3-website-us-west-2.amazonaws.com/dynamodb_local_latest | /bin/tar xz && \
    apk del .dependency

ENTRYPOINT ["java", "-Djava.library.path=./DynamoDBLocal_lib", "-jar", "DynamoDBLocal.jar"]

EXPOSE 8000

CMD ["-help"]
