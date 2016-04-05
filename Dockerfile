FROM         java:alpine

MAINTAINER   Pedro Flores <pflores@codelab.com.py>


# Use of the http url here is because ca certificates in the alpine linux aren't installed

RUN          apk add --no-cache bash && \
             wget "http://downloads.typesafe.com/typesafe-activator/1.3.9/typesafe-activator-1.3.9-minimal.zip" && \
             unzip typesafe-activator-1.3.9-minimal.zip && \
             mv activator-1.3.9-minimal/bin/activator /usr/local/bin && \
             mv activator-1.3.9-minimal/libexec /usr/local && \
             rm -rf activator-1.3.9-minimal/ && \
             rm typesafe-activator-1.3.9-minimal.zip

ENTRYPOINT   /usr/local/bin/activator
