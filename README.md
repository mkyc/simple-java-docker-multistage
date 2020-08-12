# simple-java-docker-multistage
Simplest possible Java Hello World with Docker multistage build process

```
> docker build -t jdm .                                
Sending build context to Docker daemon  69.63kB
Step 1/8 : FROM openjdk:16-jdk AS builder
 ---> 8f7b0d173d14
Step 2/8 : WORKDIR /
 ---> Using cache
 ---> ddbdfbdb39d3
Step 3/8 : COPY HelloWorld.java .
 ---> Using cache
 ---> 3d0fb693e959
Step 4/8 : RUN javac HelloWorld.java
 ---> Using cache
 ---> a7c8a041e6a3
Step 5/8 : FROM openjdk:16-jdk
 ---> 8f7b0d173d14
Step 6/8 : WORKDIR /
 ---> Using cache
 ---> ddbdfbdb39d3
Step 7/8 : COPY --from=builder /HelloWorld.class .
 ---> Using cache
 ---> 5f151c866a84
Step 8/8 : CMD ["java", "HelloWorld"]
 ---> Using cache
 ---> 5230f53ab2db
Successfully built 5230f53ab2db
Successfully tagged jdm:latest
```

```
> docker run --rm -i jdm:latest                        
Hello, World!
Press the Enter Key to continue...


```
```
> docker images
jdm                   latest              5230f53ab2db        About a minute ago   514MB
```