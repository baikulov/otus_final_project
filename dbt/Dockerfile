# Dockerfile to create image with cron services
FROM ubuntu:latest

# Add the script to the Docker Image
ADD test.sh /root/test.sh

# Give execution rights on the cron scripts
RUN chmod 0644 /root/test.sh

#Install Cron
RUN apt-get update
RUN apt-get -y install cron

# Add the cron job
RUN crontab -l | { cat; echo "*/1 * * * * bash /root/test.sh"; } | crontab -

# Run the command on container startup
CMD cron