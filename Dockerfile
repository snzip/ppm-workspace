FROM openjdk:8

COPY sources.list /etc/apt/sources.list
RUN apt update && apt install -y vim  net-tools dos2unix telnet inetutils-ping flip

# install maven/ant/nodejs

RUN wget https://archive.apache.org/dist/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz \
	&& tar -xvf apache-maven-3.6.3-bin.tar.gz \
    && mv apache-maven-3.6.3 /opt/
	


RUN wget https://archive.apache.org/dist/ant/binaries/apache-ant-1.9.16-bin.tar.gz  \
	&& tar -xvf apache-ant-1.9.16*.tar.gz  \
	&& mv apache-ant-1.9.16 /opt/
		
		

RUN wget https://nodejs.org/download/release/v18.18.0/node-v18.18.0-linux-x64.tar.gz \
	&& tar -xvf node-v18.18.0-linux-x64.tar.gz \
	&& mv node-v18.18.0-linux-x64 /opt/
	    
ENV MAVEN_HOME='/opt/apache-maven-3.6.3'
ENV ANT_HOME='/opt/apache-ant-1.9.16'
ENV NODE_HOME='/opt/node-v18.18.0-linux-x64'

ENV PATH="$MAVEN_HOME/bin:$NODE_HOME/bin:$ANT_HOME/bin:$PATH"


COPY .bashrc /root/

# COPY settings.xml /root/.m2/settings.xml 
# COPY m2.tar.gz  /root/
# RUN mkdir /root && cd /root/ && tar xvzf m2.tar.gz

ENV BUILD_TOOLS=/ppm

WORKDIR /ppm















# keep running
ENTRYPOINT ["tail", "-f", "/dev/null"]
