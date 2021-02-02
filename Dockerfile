FROM maven:3.6.3-jdk-8
ARG PROJECT_VERSION=0.4
RUN mkdir /MSA_BaseDockerImage
COPY . /MSA_BaseDockerImage
RUN cd /MSA_BaseDockerImage && \
    mvn clean package &&  \
    rm -r /MSA_BaseDockerImage
CMD ["pwd"]