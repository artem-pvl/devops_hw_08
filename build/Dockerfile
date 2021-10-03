FROM ubuntu:latest
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install default-jdk git maven -y
COPY ./rsa_key /root/.ssh
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git /source
RUN git clone https://github.com/artem-pvl/devops_hw_08_deploy.git /binaries
RUN mvn -q -f /source package
RUN cp /source/target/* /binaries
WORKDIR /binaries
RUN git add .
RUN git commit -m 'one more'
RUN git push