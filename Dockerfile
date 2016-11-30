FROM dbieri/docker-oracle-xe-11g

ENV ORACLE_HOME /u01/app/oracle/product/11.2.0/xe

# set timezone
RUN echo "Europe/Zurich" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata

RUN apt-get update
RUN apt-get install -y iputils-ping dnsutils vim less

######## maven ###########
RUN apt-get install -y openjdk-8-jdk-headless
RUN apt-get install -y maven

#cleanup apt
RUN apt-get autoremove && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*


CMD /start.sh


