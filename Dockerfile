FROM dbehnke/jdk:7
MAINTAINER Dave Behnke <boolean74@gmail.com>

# Install typesafe activator
RUN export VERSION=1.2.10 && \
    cd tmp && \
    wget -q "http://downloads.typesafe.com/typesafe-activator/$VERSION/typesafe-activator-$VERSION.zip" && \
    cd /opt && \
    unzip /tmp/typesafe-activator-$VERSION.zip && \
    rm /tmp/typesafe-activator-$VERSION.zip && \
    ln -s activator-$VERSION activator

# Add a start script
ADD start-play /opt/

# Expose the defaultplayframework application port
EXPOSE 9000

# elasticsearch service in the foreground
CMD ["/opt/start-play"]

