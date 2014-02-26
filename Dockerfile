FROM ubuntu
MAINTAINER Chris Hardekopf <cjh@ygdrasill.com>

# Upload the setup script
ADD setup.sh /tmp/setup.sh

# Run the setup script
RUN /bin/bash /tmp/setup.sh

# Add a start script
ADD start.sh /usr/local/sbin/

# Expose the defaultplayframework application port
EXPOSE 9000

# elasticsearch service in the foreground
CMD ["/usr/local/sbin/start.sh"]

