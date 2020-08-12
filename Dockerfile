FROM openjdk:16-jdk AS builder
WORKDIR /
COPY HelloWorld.java .
RUN javac HelloWorld.java

FROM openjdk:16-jdk
WORKDIR /
COPY --from=builder /HelloWorld.class .
CMD ["java", "HelloWorld"]
