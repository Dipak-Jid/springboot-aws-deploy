FROM public.ecr.aws/amazoncorretto/amazoncorretto:17-alpine
RUN apk add curl
VOLUME /tmp
EXPOSE 8080
ADD target/springboot-aws-deploy-service.jar springboot-aws-deploy-service.jar
ENTRYPOINT ["java","-jar","/springboot-aws-deploy-service.jar"]
