FROM         java:alpine

MAINTAINER   Pedro Flores <pflores@codelab.com.py>

RUN          wget "https://downloads.typesafe.com/typesafe-activator/1.3.9/typesafe-activator-1.3.9-minimal.zip" && \
             unzip -d /usr/local/bin typesafe-activator-1.3.9-minimal.zip && \
             rm -rf activator-1.3.9-minimal/ && \
             rm typesafe-activator-1.3.9-minimal.zip
