# Use the latest Ubuntu base image
FROM ubuntu:latest

# Set the maintainer information
MAINTAINER sharmapratham220@gmail.com

# Update package list and install Apache2, zip, and unzip
RUN apt-get update && apt-get install -y apache2 zip unzip

# Add the specified ZIP file from the given URL to /var/www/html/ in the container
ADD https://www.free-css.com/assets/files/free-css-templates/download/page265/shine.zip /var/www/html/

# Set the working directory to /var/www/html/
WORKDIR /var/www/html/

# Unzip the contents of shine.zip
RUN unzip shine.zip

# Copy the contents of the shine directory to the current directory (/var/www/html/)
RUN cp -rvf shine/* .

# Remove the shine directory and the original ZIP file to clean up
RUN rm -rf shine shine.zip

# Define the default command to run Apache in the foreground
CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]

# Expose ports 80 and 22
EXPOSE 80 22
